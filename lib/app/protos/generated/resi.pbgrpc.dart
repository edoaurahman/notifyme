//
//  Generated code. Do not modify.
//  source: resi.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'resi.pb.dart' as $0;

export 'resi.pb.dart';

@$pb.GrpcServiceName('protos.ResiService')
class ResiServiceClient extends $grpc.Client {
  static final _$createResi = $grpc.ClientMethod<$0.CreateResiRequest, $0.ResiResponse>(
      '/protos.ResiService/CreateResi',
      ($0.CreateResiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResiResponse.fromBuffer(value));
  static final _$getResi = $grpc.ClientMethod<$0.GetResiRequest, $0.ResiResponse>(
      '/protos.ResiService/GetResi',
      ($0.GetResiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResiResponse.fromBuffer(value));
  static final _$updateResi = $grpc.ClientMethod<$0.UpdateResiRequest, $0.ResiResponse>(
      '/protos.ResiService/UpdateResi',
      ($0.UpdateResiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResiResponse.fromBuffer(value));
  static final _$deleteResi = $grpc.ClientMethod<$0.DeleteResiRequest, $0.DeleteResiResponse>(
      '/protos.ResiService/DeleteResi',
      ($0.DeleteResiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteResiResponse.fromBuffer(value));
  static final _$getAllResi = $grpc.ClientMethod<$0.Empty, $0.ResiListResponse>(
      '/protos.ResiService/GetAllResi',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResiListResponse.fromBuffer(value));
  static final _$checkAllResi = $grpc.ClientMethod<$0.Empty, $0.CheckAllResiResponse>(
      '/protos.ResiService/CheckAllResi',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CheckAllResiResponse.fromBuffer(value));

  ResiServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResiResponse> createResi($0.CreateResiRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createResi, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResiResponse> getResi($0.GetResiRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResi, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResiResponse> updateResi($0.UpdateResiRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateResi, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteResiResponse> deleteResi($0.DeleteResiRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteResi, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResiListResponse> getAllResi($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllResi, request, options: options);
  }

  $grpc.ResponseFuture<$0.CheckAllResiResponse> checkAllResi($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkAllResi, request, options: options);
  }
}

@$pb.GrpcServiceName('protos.ResiService')
abstract class ResiServiceBase extends $grpc.Service {
  $core.String get $name => 'protos.ResiService';

  ResiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateResiRequest, $0.ResiResponse>(
        'CreateResi',
        createResi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateResiRequest.fromBuffer(value),
        ($0.ResiResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetResiRequest, $0.ResiResponse>(
        'GetResi',
        getResi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetResiRequest.fromBuffer(value),
        ($0.ResiResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateResiRequest, $0.ResiResponse>(
        'UpdateResi',
        updateResi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateResiRequest.fromBuffer(value),
        ($0.ResiResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteResiRequest, $0.DeleteResiResponse>(
        'DeleteResi',
        deleteResi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteResiRequest.fromBuffer(value),
        ($0.DeleteResiResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.ResiListResponse>(
        'GetAllResi',
        getAllResi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.ResiListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.CheckAllResiResponse>(
        'CheckAllResi',
        checkAllResi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.CheckAllResiResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResiResponse> createResi_Pre($grpc.ServiceCall call, $async.Future<$0.CreateResiRequest> request) async {
    return createResi(call, await request);
  }

  $async.Future<$0.ResiResponse> getResi_Pre($grpc.ServiceCall call, $async.Future<$0.GetResiRequest> request) async {
    return getResi(call, await request);
  }

  $async.Future<$0.ResiResponse> updateResi_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateResiRequest> request) async {
    return updateResi(call, await request);
  }

  $async.Future<$0.DeleteResiResponse> deleteResi_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteResiRequest> request) async {
    return deleteResi(call, await request);
  }

  $async.Future<$0.ResiListResponse> getAllResi_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllResi(call, await request);
  }

  $async.Future<$0.CheckAllResiResponse> checkAllResi_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return checkAllResi(call, await request);
  }

  $async.Future<$0.ResiResponse> createResi($grpc.ServiceCall call, $0.CreateResiRequest request);
  $async.Future<$0.ResiResponse> getResi($grpc.ServiceCall call, $0.GetResiRequest request);
  $async.Future<$0.ResiResponse> updateResi($grpc.ServiceCall call, $0.UpdateResiRequest request);
  $async.Future<$0.DeleteResiResponse> deleteResi($grpc.ServiceCall call, $0.DeleteResiRequest request);
  $async.Future<$0.ResiListResponse> getAllResi($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.CheckAllResiResponse> checkAllResi($grpc.ServiceCall call, $0.Empty request);
}
