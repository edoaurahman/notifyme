import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notifyme/app/components/expedition_dropdown.dart';
import 'package:notifyme/app/modules/home/providers/grpc_service.dart';
import 'package:notifyme/app/protos/generated/resi.pbgrpc.dart';

class ExpeditionsController extends GetxController {
  final Rx<List<Resi>> listExpeditions = Rx<List<Resi>>([]);
  final TextEditingController expeditionSelected = TextEditingController();
  final TextEditingController textResiController = TextEditingController();
  final TextEditingController textPackageNameController =
      TextEditingController();
  final TextEditingController textEmailController = TextEditingController();
  final TextEditingController textStatusController = TextEditingController();
  final GRCPService grpcService = GRCPService();
  final isLoading = true.obs;

  @override
  void onReady() {
    fetchExpeditions();
    super.onReady();
  }

  @override
  void onClose() {
    grpcService.close();
    super.onClose();
  }

  void fetchExpeditions() async {
    isLoading.value = true;
    listExpeditions.value = [];
    final resis = await grpcService.getAllResi();
    listExpeditions.value = resis;
    isLoading.value = false;
  }

  void showDialogAddExpedition() {
    Get.defaultDialog(
      title: 'Add Expedition',
      content: Column(
        children: <Widget>[
          ExpeditionsDropdown(expeditionSelected: expeditionSelected),
          TextField(
            controller: textPackageNameController,
            decoration: const InputDecoration(labelText: 'Nama Barang'),
          ),
          TextField(
            controller: textResiController,
            decoration: const InputDecoration(labelText: 'Resi'),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: textEmailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (textResiController.text.isNotEmpty &&
                textEmailController.text.isNotEmpty &&
                textPackageNameController.text.isNotEmpty &&
                expeditionSelected.text.isNotEmpty) {
              addExpedition();
              Get.back();
            } else {
              Get.snackbar('Fill all data', 'Please fill all data');
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  void addExpedition() async {
    await grpcService.addResi(
      textResiController.text,
      expeditionSelected.text,
      textEmailController.text,
      textPackageNameController.text,
    );
    expeditionSelected.clear();
    textPackageNameController.clear();
    textResiController.clear();
    textEmailController.clear();
    fetchExpeditions();
  }

  void showUpdateExpeditionDialog(String resi) {
    Get.defaultDialog(
      title: 'Update Expedition',
      content: Column(
        children: <Widget>[
          Text('Resi: $resi'),
          ExpeditionStatusDropdown(statusSelected: textStatusController)
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            deleteExpedition(resi);
            Get.back();
          },
          child: const Text('Delete'),
        ),
        TextButton(
          onPressed: () {
            if (textStatusController.text.isNotEmpty) {
              updateExpedition(resi, textStatusController.text);
              Get.back();
            } else {
              Get.snackbar('Fill all data', 'Please fill all data');
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  void updateExpedition(String resi, String status) async {
    await grpcService.updateResi(resi, status);
    textStatusController.clear();
    fetchExpeditions();
  }

  void deleteExpedition(String resi) async {
    await grpcService.deleteResi(resi);
    fetchExpeditions();
  }
}
