//
//  Generated code. Do not modify.
//  source: resi.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Resi extends $pb.GeneratedMessage {
  factory Resi({
    $core.int? id,
    $core.String? trackingNum,
    $core.String? expedition,
    $core.String? status,
    $core.String? details,
    $core.String? email,
    $core.String? packageName,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (trackingNum != null) {
      $result.trackingNum = trackingNum;
    }
    if (expedition != null) {
      $result.expedition = expedition;
    }
    if (status != null) {
      $result.status = status;
    }
    if (details != null) {
      $result.details = details;
    }
    if (email != null) {
      $result.email = email;
    }
    if (packageName != null) {
      $result.packageName = packageName;
    }
    return $result;
  }
  Resi._() : super();
  factory Resi.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Resi.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Resi', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'trackingNum')
    ..aOS(3, _omitFieldNames ? '' : 'expedition')
    ..aOS(4, _omitFieldNames ? '' : 'status')
    ..aOS(5, _omitFieldNames ? '' : 'details')
    ..aOS(6, _omitFieldNames ? '' : 'email')
    ..aOS(7, _omitFieldNames ? '' : 'packageName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Resi clone() => Resi()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Resi copyWith(void Function(Resi) updates) => super.copyWith((message) => updates(message as Resi)) as Resi;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Resi create() => Resi._();
  Resi createEmptyInstance() => create();
  static $pb.PbList<Resi> createRepeated() => $pb.PbList<Resi>();
  @$core.pragma('dart2js:noInline')
  static Resi getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Resi>(create);
  static Resi? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get trackingNum => $_getSZ(1);
  @$pb.TagNumber(2)
  set trackingNum($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTrackingNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearTrackingNum() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get expedition => $_getSZ(2);
  @$pb.TagNumber(3)
  set expedition($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpedition() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpedition() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get details => $_getSZ(4);
  @$pb.TagNumber(5)
  set details($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDetails() => $_has(4);
  @$pb.TagNumber(5)
  void clearDetails() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get email => $_getSZ(5);
  @$pb.TagNumber(6)
  set email($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEmail() => $_has(5);
  @$pb.TagNumber(6)
  void clearEmail() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get packageName => $_getSZ(6);
  @$pb.TagNumber(7)
  set packageName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPackageName() => $_has(6);
  @$pb.TagNumber(7)
  void clearPackageName() => clearField(7);
}

class CreateResiRequest extends $pb.GeneratedMessage {
  factory CreateResiRequest({
    $core.String? trackingNum,
    $core.String? expedition,
    $core.String? email,
    $core.String? packageName,
  }) {
    final $result = create();
    if (trackingNum != null) {
      $result.trackingNum = trackingNum;
    }
    if (expedition != null) {
      $result.expedition = expedition;
    }
    if (email != null) {
      $result.email = email;
    }
    if (packageName != null) {
      $result.packageName = packageName;
    }
    return $result;
  }
  CreateResiRequest._() : super();
  factory CreateResiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateResiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateResiRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'trackingNum')
    ..aOS(2, _omitFieldNames ? '' : 'expedition')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'packageName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateResiRequest clone() => CreateResiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateResiRequest copyWith(void Function(CreateResiRequest) updates) => super.copyWith((message) => updates(message as CreateResiRequest)) as CreateResiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateResiRequest create() => CreateResiRequest._();
  CreateResiRequest createEmptyInstance() => create();
  static $pb.PbList<CreateResiRequest> createRepeated() => $pb.PbList<CreateResiRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateResiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateResiRequest>(create);
  static CreateResiRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get trackingNum => $_getSZ(0);
  @$pb.TagNumber(1)
  set trackingNum($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrackingNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrackingNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get expedition => $_getSZ(1);
  @$pb.TagNumber(2)
  set expedition($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpedition() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpedition() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get packageName => $_getSZ(3);
  @$pb.TagNumber(4)
  set packageName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPackageName() => $_has(3);
  @$pb.TagNumber(4)
  void clearPackageName() => clearField(4);
}

class GetResiRequest extends $pb.GeneratedMessage {
  factory GetResiRequest({
    $core.String? trackingNum,
  }) {
    final $result = create();
    if (trackingNum != null) {
      $result.trackingNum = trackingNum;
    }
    return $result;
  }
  GetResiRequest._() : super();
  factory GetResiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetResiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetResiRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'trackingNum')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetResiRequest clone() => GetResiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetResiRequest copyWith(void Function(GetResiRequest) updates) => super.copyWith((message) => updates(message as GetResiRequest)) as GetResiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetResiRequest create() => GetResiRequest._();
  GetResiRequest createEmptyInstance() => create();
  static $pb.PbList<GetResiRequest> createRepeated() => $pb.PbList<GetResiRequest>();
  @$core.pragma('dart2js:noInline')
  static GetResiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetResiRequest>(create);
  static GetResiRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get trackingNum => $_getSZ(0);
  @$pb.TagNumber(1)
  set trackingNum($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrackingNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrackingNum() => clearField(1);
}

class UpdateResiRequest extends $pb.GeneratedMessage {
  factory UpdateResiRequest({
    $core.String? trackingNum,
    $core.String? status,
  }) {
    final $result = create();
    if (trackingNum != null) {
      $result.trackingNum = trackingNum;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  UpdateResiRequest._() : super();
  factory UpdateResiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateResiRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'trackingNum')
    ..aOS(4, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResiRequest clone() => UpdateResiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResiRequest copyWith(void Function(UpdateResiRequest) updates) => super.copyWith((message) => updates(message as UpdateResiRequest)) as UpdateResiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResiRequest create() => UpdateResiRequest._();
  UpdateResiRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateResiRequest> createRepeated() => $pb.PbList<UpdateResiRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateResiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResiRequest>(create);
  static UpdateResiRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get trackingNum => $_getSZ(0);
  @$pb.TagNumber(2)
  set trackingNum($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasTrackingNum() => $_has(0);
  @$pb.TagNumber(2)
  void clearTrackingNum() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(4)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
}

class DeleteResiRequest extends $pb.GeneratedMessage {
  factory DeleteResiRequest({
    $core.String? trackingNum,
  }) {
    final $result = create();
    if (trackingNum != null) {
      $result.trackingNum = trackingNum;
    }
    return $result;
  }
  DeleteResiRequest._() : super();
  factory DeleteResiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteResiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteResiRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'trackingNum')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteResiRequest clone() => DeleteResiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteResiRequest copyWith(void Function(DeleteResiRequest) updates) => super.copyWith((message) => updates(message as DeleteResiRequest)) as DeleteResiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteResiRequest create() => DeleteResiRequest._();
  DeleteResiRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteResiRequest> createRepeated() => $pb.PbList<DeleteResiRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteResiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteResiRequest>(create);
  static DeleteResiRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get trackingNum => $_getSZ(0);
  @$pb.TagNumber(1)
  set trackingNum($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrackingNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrackingNum() => clearField(1);
}

class ResiResponse extends $pb.GeneratedMessage {
  factory ResiResponse({
    Resi? resi,
  }) {
    final $result = create();
    if (resi != null) {
      $result.resi = resi;
    }
    return $result;
  }
  ResiResponse._() : super();
  factory ResiResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResiResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResiResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOM<Resi>(1, _omitFieldNames ? '' : 'resi', subBuilder: Resi.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResiResponse clone() => ResiResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResiResponse copyWith(void Function(ResiResponse) updates) => super.copyWith((message) => updates(message as ResiResponse)) as ResiResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResiResponse create() => ResiResponse._();
  ResiResponse createEmptyInstance() => create();
  static $pb.PbList<ResiResponse> createRepeated() => $pb.PbList<ResiResponse>();
  @$core.pragma('dart2js:noInline')
  static ResiResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResiResponse>(create);
  static ResiResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Resi get resi => $_getN(0);
  @$pb.TagNumber(1)
  set resi(Resi v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResi() => $_has(0);
  @$pb.TagNumber(1)
  void clearResi() => clearField(1);
  @$pb.TagNumber(1)
  Resi ensureResi() => $_ensure(0);
}

class DeleteResiResponse extends $pb.GeneratedMessage {
  factory DeleteResiResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteResiResponse._() : super();
  factory DeleteResiResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteResiResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteResiResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteResiResponse clone() => DeleteResiResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteResiResponse copyWith(void Function(DeleteResiResponse) updates) => super.copyWith((message) => updates(message as DeleteResiResponse)) as DeleteResiResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteResiResponse create() => DeleteResiResponse._();
  DeleteResiResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteResiResponse> createRepeated() => $pb.PbList<DeleteResiResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteResiResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteResiResponse>(create);
  static DeleteResiResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class ResiListResponse extends $pb.GeneratedMessage {
  factory ResiListResponse({
    $core.Iterable<Resi>? resis,
  }) {
    final $result = create();
    if (resis != null) {
      $result.resis.addAll(resis);
    }
    return $result;
  }
  ResiListResponse._() : super();
  factory ResiListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResiListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResiListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..pc<Resi>(1, _omitFieldNames ? '' : 'resis', $pb.PbFieldType.PM, subBuilder: Resi.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResiListResponse clone() => ResiListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResiListResponse copyWith(void Function(ResiListResponse) updates) => super.copyWith((message) => updates(message as ResiListResponse)) as ResiListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResiListResponse create() => ResiListResponse._();
  ResiListResponse createEmptyInstance() => create();
  static $pb.PbList<ResiListResponse> createRepeated() => $pb.PbList<ResiListResponse>();
  @$core.pragma('dart2js:noInline')
  static ResiListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResiListResponse>(create);
  static ResiListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resi> get resis => $_getList(0);
}

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class CheckAllResiResponse extends $pb.GeneratedMessage {
  factory CheckAllResiResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  CheckAllResiResponse._() : super();
  factory CheckAllResiResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckAllResiResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckAllResiResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckAllResiResponse clone() => CheckAllResiResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckAllResiResponse copyWith(void Function(CheckAllResiResponse) updates) => super.copyWith((message) => updates(message as CheckAllResiResponse)) as CheckAllResiResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckAllResiResponse create() => CheckAllResiResponse._();
  CheckAllResiResponse createEmptyInstance() => create();
  static $pb.PbList<CheckAllResiResponse> createRepeated() => $pb.PbList<CheckAllResiResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckAllResiResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckAllResiResponse>(create);
  static CheckAllResiResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
