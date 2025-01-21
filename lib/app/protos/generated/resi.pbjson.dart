//
//  Generated code. Do not modify.
//  source: resi.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resiDescriptor instead')
const Resi$json = {
  '1': 'Resi',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'tracking_num', '3': 2, '4': 1, '5': 9, '10': 'trackingNum'},
    {'1': 'expedition', '3': 3, '4': 1, '5': 9, '10': 'expedition'},
    {'1': 'status', '3': 4, '4': 1, '5': 9, '10': 'status'},
    {'1': 'details', '3': 5, '4': 1, '5': 9, '10': 'details'},
    {'1': 'email', '3': 6, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `Resi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resiDescriptor = $convert.base64Decode(
    'CgRSZXNpEg4KAmlkGAEgASgFUgJpZBIhCgx0cmFja2luZ19udW0YAiABKAlSC3RyYWNraW5nTn'
    'VtEh4KCmV4cGVkaXRpb24YAyABKAlSCmV4cGVkaXRpb24SFgoGc3RhdHVzGAQgASgJUgZzdGF0'
    'dXMSGAoHZGV0YWlscxgFIAEoCVIHZGV0YWlscxIUCgVlbWFpbBgGIAEoCVIFZW1haWw=');

@$core.Deprecated('Use createResiRequestDescriptor instead')
const CreateResiRequest$json = {
  '1': 'CreateResiRequest',
  '2': [
    {'1': 'tracking_num', '3': 1, '4': 1, '5': 9, '10': 'trackingNum'},
    {'1': 'expedition', '3': 2, '4': 1, '5': 9, '10': 'expedition'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `CreateResiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResiRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSZXNpUmVxdWVzdBIhCgx0cmFja2luZ19udW0YASABKAlSC3RyYWNraW5nTnVtEh'
    '4KCmV4cGVkaXRpb24YAiABKAlSCmV4cGVkaXRpb24SFAoFZW1haWwYAyABKAlSBWVtYWls');

@$core.Deprecated('Use getResiRequestDescriptor instead')
const GetResiRequest$json = {
  '1': 'GetResiRequest',
  '2': [
    {'1': 'tracking_num', '3': 1, '4': 1, '5': 9, '10': 'trackingNum'},
  ],
};

/// Descriptor for `GetResiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResiRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRSZXNpUmVxdWVzdBIhCgx0cmFja2luZ19udW0YASABKAlSC3RyYWNraW5nTnVt');

@$core.Deprecated('Use updateResiRequestDescriptor instead')
const UpdateResiRequest$json = {
  '1': 'UpdateResiRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'tracking_num', '3': 2, '4': 1, '5': 9, '10': 'trackingNum'},
    {'1': 'expedition', '3': 3, '4': 1, '5': 9, '10': 'expedition'},
    {'1': 'status', '3': 4, '4': 1, '5': 9, '10': 'status'},
    {'1': 'details', '3': 5, '4': 1, '5': 9, '10': 'details'},
    {'1': 'email', '3': 6, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `UpdateResiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResiRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVSZXNpUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSIQoMdHJhY2tpbmdfbnVtGAIgAS'
    'gJUgt0cmFja2luZ051bRIeCgpleHBlZGl0aW9uGAMgASgJUgpleHBlZGl0aW9uEhYKBnN0YXR1'
    'cxgEIAEoCVIGc3RhdHVzEhgKB2RldGFpbHMYBSABKAlSB2RldGFpbHMSFAoFZW1haWwYBiABKA'
    'lSBWVtYWls');

@$core.Deprecated('Use deleteResiRequestDescriptor instead')
const DeleteResiRequest$json = {
  '1': 'DeleteResiRequest',
  '2': [
    {'1': 'tracking_num', '3': 1, '4': 1, '5': 9, '10': 'trackingNum'},
  ],
};

/// Descriptor for `DeleteResiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResiRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVSZXNpUmVxdWVzdBIhCgx0cmFja2luZ19udW0YASABKAlSC3RyYWNraW5nTnVt');

@$core.Deprecated('Use resiResponseDescriptor instead')
const ResiResponse$json = {
  '1': 'ResiResponse',
  '2': [
    {'1': 'resi', '3': 1, '4': 1, '5': 11, '6': '.protos.Resi', '10': 'resi'},
  ],
};

/// Descriptor for `ResiResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resiResponseDescriptor = $convert.base64Decode(
    'CgxSZXNpUmVzcG9uc2USIAoEcmVzaRgBIAEoCzIMLnByb3Rvcy5SZXNpUgRyZXNp');

@$core.Deprecated('Use deleteResiResponseDescriptor instead')
const DeleteResiResponse$json = {
  '1': 'DeleteResiResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteResiResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResiResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVSZXNpUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use resiListResponseDescriptor instead')
const ResiListResponse$json = {
  '1': 'ResiListResponse',
  '2': [
    {'1': 'resis', '3': 1, '4': 3, '5': 11, '6': '.protos.Resi', '10': 'resis'},
  ],
};

/// Descriptor for `ResiListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resiListResponseDescriptor = $convert.base64Decode(
    'ChBSZXNpTGlzdFJlc3BvbnNlEiIKBXJlc2lzGAEgAygLMgwucHJvdG9zLlJlc2lSBXJlc2lz');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

