import 'package:json_annotation/json_annotation.dart';

//// AttachmentVO 二进制内容	字段	类型	说明
///	id	string	主键
///	imageWidth	int	图片宽度，仅图片文件类型该字段有效
///	imageHeight	int	图片高度，仅图片文件类型该字段有效
///	contentType	string	内容类型，同http multipart请求上传上来的类型
///	originFileUrl	string	原文件浏览url
///	mediumFileUrl	string	中图浏览url 仅图片文件类型该字段有效
///	thumbFileUrl	string	小图浏览url 仅图片文件类型该字段有效
///	originFileUrlForDownload	string	原文件下载url
///	mediumFileUrlForDownload	string	中图下载url 仅图片文件类型该字段有效
///	thumbFileUrlForDownload	string	小图下载url 仅图片文件类型该字段有效
/// coverId	string	为视频情况下且有设置封面的coverId图片
/// coverAttachment	string	为视频情况下且有设置封面的coverId封面图
/// coverPicUrl	string	视频封面图片

part 'attachment_vo.g.dart';

@JsonSerializable()
class AttachmentVO {
  final String id;
  final int imageWidth;
  final int imageHeight;
  final String contentType;
  final String originFileUrl;
  final String mediumFileUrl;
  final String thumbFileUrl;
  final String originFileUrlForDownload;
  final String mediumFileUrlForDownload;
  final String thumbFileUrlForDownload;
  final String coverId;
  final AttachmentVO coverAttachment;
  final String coverPicUrl;

  AttachmentVO(
      this.id,
      this.imageWidth,
      this.imageHeight,
      this.contentType,
      this.originFileUrl,
      this.mediumFileUrl,
      this.thumbFileUrl,
      this.originFileUrlForDownload,
      this.mediumFileUrlForDownload,
      this.thumbFileUrlForDownload,
      this.coverId,
      this.coverAttachment,
      this.coverPicUrl);

  factory AttachmentVO.fromJson(Map<String, dynamic> json) =>
      _$AttachmentVOFromJson(json);

  Map<String, dynamic> toJson() => _$AttachmentVOToJson(this);
}
