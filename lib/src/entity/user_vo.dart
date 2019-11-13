import 'package:json_annotation/json_annotation.dart';

import 'attachment_vo.dart';

/// UserVO   用户信息
//  id	int	主键
//	createdAt	datetime	注册时间
//	telphoneHead	string	手机号头部，比如中国就是86 让用户选择
//	userName	string	用户名
//	avatarId	string	头像id
//	avatarAttachment	object	头像二进制信息
//	realNameStatus	int	实名认证状态 0为未实名认证，1为通过，2为未通过
//	idCard	string	身份证号
//	realName	string	真实姓名
//	telphone	string	手机号
//	wechatNickname	string	微信昵称（仅微信登录的场景才会有）
//	idCardType	int	证件类型，1为护照，2为身份证，3为港澳台，4为其他
//	disabledFlag	int	是否禁用
//	pubCount	int	发布数量
//	lotCount	int	竞拍数
//	tradeCount	int	成交数
//	roleType	string	角色类型，前端暂时无用
//	wechatId	string	微信openid，若为空，表示没绑定过微信

part 'user_vo.g.dart';

@JsonSerializable()
class UserVO {
  UserVO(
    this.id,
    this.createdAt,
    this.telphoneHead,
    this.userName,
    this.avatarId,
    this.avatarAttachment,
    this.realNameStatus,
    this.idCard,
    this.realName,
    this.telphone,
    this.wechatNickname,
    this.idCardType,
    this.disabledFlag,
    this.pubCount,
    this.lotCount,
    this.tradeCount,
    this.roleType,
    this.wechatId,
  );

  final int id;
  final String createdAt;
  final String telphoneHead;
  final String userName;
  final String avatarId;
  final AttachmentVO avatarAttachment;
  final int realNameStatus;
  final String idCard;
  final String realName;
  final String telphone;
  final String wechatNickname;
  final int idCardType;
  final int disabledFlag;
  final int pubCount;
  final int lotCount;
  final int tradeCount;
  final String roleType;
  final String wechatId;

  factory UserVO.fromJson(Map<String, dynamic> json) => _$UserVOFromJson(json);

  Map<String, dynamic> toJson() => _$UserVOToJson(this);
}
