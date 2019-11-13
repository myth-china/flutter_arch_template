// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserVO _$UserVOFromJson(Map<String, dynamic> json) {
  return UserVO(
      json['id'] as int,
      json['createdAt'] as String,
      json['telphoneHead'] as String,
      json['userName'] as String,
      json['avatarId'] as String,
      json['avatarAttachment'],
      json['realNameStatus'] as int,
      json['idCard'] as String,
      json['realName'] as String,
      json['telphone'] as String,
      json['wechatNickname'] as String,
      json['idCardType'] as int,
      json['disabledFlag'] as int,
      json['pubCount'] as int,
      json['lotCount'] as int,
      json['tradeCount'] as int,
      json['roleType'] as String,
      json['wechatId'] as String);
}

Map<String, dynamic> _$UserVOToJson(UserVO instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'telphoneHead': instance.telphoneHead,
      'userName': instance.userName,
      'avatarId': instance.avatarId,
      'avatarAttachment': instance.avatarAttachment,
      'realNameStatus': instance.realNameStatus,
      'idCard': instance.idCard,
      'realName': instance.realName,
      'telphone': instance.telphone,
      'wechatNickname': instance.wechatNickname,
      'idCardType': instance.idCardType,
      'disabledFlag': instance.disabledFlag,
      'pubCount': instance.pubCount,
      'lotCount': instance.lotCount,
      'tradeCount': instance.tradeCount,
      'roleType': instance.roleType,
      'wechatId': instance.wechatId
    };
