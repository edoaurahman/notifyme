import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:notifyme/app/protos/generated/resi.pbgrpc.dart';
import 'package:notifyme/config.dart';
import 'package:get/get.dart';

class GRCPService {
  late ResiServiceClient _client;
  late ClientChannel _channel;
  final Completer<void> _initCompleter = Completer<void>();

  GRCPService() {
    init();
  }

  void init() async {
    _channel = await _makeChannel();
    _client = ResiServiceClient(_channel);
    _initCompleter.complete();
  }

  Future<void> _ensureInitialized() async {
    if (!_initCompleter.isCompleted) {
      await _initCompleter.future;
    }
  }

  Future<ClientChannel> _makeChannel() async {
    final caCert =
        await rootBundle.loadString('assets/certificates/ca-cert.pem');

    return ClientChannel(
      Config.GRCP_URL_BASE,
      port: Config.GRCP_PORT,
      options: ChannelOptions(
        credentials: ChannelCredentials.secure(
          certificates: utf8.encode(caCert),

          // --- WORKAROUND FOR SELF-SIGNED DEVELOPMENT CA ---
          onBadCertificate: (certificate, host) =>
              host == '${Config.GRCP_URL_BASE}:${Config.GRCP_PORT}',
        ),
      ),
    );
  }

  Future<List<Resi>> getAllResi() async {
    await _ensureInitialized();
    try {
      final response = await _client.getAllResi(Empty());
      return response.resis;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteResi(String resi) async {
    try {
      final request = DeleteResiRequest()..trackingNum = resi;
      final response = await _client.deleteResi(request);
      if (response.success) {
        Get.snackbar("Success", "Data deleted",
            duration: const Duration(seconds: 1));
      } else {
        Get.snackbar("Error", "Failed to delete data",
            duration: const Duration(seconds: 1));
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addResi(
      String resi, String expedition, String email, String packageName) async {
    try {
      final request = CreateResiRequest()
        ..trackingNum = resi
        ..expedition = expedition
        ..email = email
        ..packageName = packageName;
      await _client.createResi(request);
      Get.snackbar("Success", "Data added");
    } on GrpcError catch (e) {
      Get.snackbar(
          "Error", "Failed to add data: ${e.message} (code: ${e.code})");
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateResi(String resi, String status) async {
    try {
      final request = UpdateResiRequest()
        ..trackingNum = resi
        ..status = status;
      await _client.updateResi(request);
      Get.snackbar("Success", "Data updated",
          duration: const Duration(seconds: 1));
    } on GrpcError catch (e) {
      Get.snackbar(
          "Error", "Failed to update data: ${e.message} (code: ${e.code})",
          duration: const Duration(seconds: 1));
    } catch (e) {
      rethrow;
    }
  }

  void close() {
    _channel.shutdown();
  }
}
