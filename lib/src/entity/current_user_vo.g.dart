// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentUserVO _$CurrentUserVOFromJson(Map<String, dynamic> json) {
  return CurrentUserVO(
      json['id'] as int,
      json['telephone'] as String,
      json['loginTime'] as String,
      json['userName'] as String,
      json['token'] as String,
      json['wechatId'] as String,
      json['userVO'] == null
          ? null
          : UserVO.fromJson(json['userVO'] as Map<String, dynamic>));
}

Map<String, dynamic> _$CurrentUserVOToJson(CurrentUserVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'telephone': instance.telephone,
      'loginTime': instance.loginTime,
      'userName': instance.userName,
      'token': instance.token,
      'wechatId': instance.wechatId,
      'userVO': instance.userVO
    };
