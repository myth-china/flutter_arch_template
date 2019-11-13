import 'package:flutter_arch_template/src/entity/user_vo.dart';
import 'package:json_annotation/json_annotation.dart';

///id	int	用户主键
//telephone	string	手机号
//loginTime	datetime	登录时间
//userName	string	用户名
//token	string	用户登录凭证
//wechatId	string	微信id

part 'current_user_vo.g.dart';

@JsonSerializable()
class CurrentUserVO {
  CurrentUserVO(
    this.id,
    this.telephone,
    this.loginTime,
    this.userName,
    this.token,
    this.wechatId,
    this.userVO,
  );

  int id;
  String telephone;
  String loginTime;
  String userName;
  String token;
  String wechatId;
  UserVO userVO;

  factory CurrentUserVO.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserVOFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentUserVOToJson(this);
}
