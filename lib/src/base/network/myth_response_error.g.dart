// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myth_response_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseError _$ResponseErrorFromJson(Map<String, dynamic> json) {
  return ResponseError(json['errCode'] as String, json['errMsg'] as String);
}

Map<String, dynamic> _$ResponseErrorToJson(ResponseError instance) =>
    <String, dynamic>{'errCode': instance.errCode, 'errMsg': instance.errMsg};
