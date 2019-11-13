// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachmentVO _$AttachmentVOFromJson(Map<String, dynamic> json) {
  return AttachmentVO(
      json['id'] as String,
      json['imageWidth'] as int,
      json['imageHeight'] as int,
      json['contentType'] as String,
      json['originFileUrl'] as String,
      json['mediumFileUrl'] as String,
      json['thumbFileUrl'] as String,
      json['originFileUrlForDownload'] as String,
      json['mediumFileUrlForDownload'] as String,
      json['thumbFileUrlForDownload'] as String,
      json['coverId'] as String,
      json['coverAttachment'] == null
          ? null
          : AttachmentVO.fromJson(
              json['coverAttachment'] as Map<String, dynamic>),
      json['coverPicUrl'] as String);
}

Map<String, dynamic> _$AttachmentVOToJson(AttachmentVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageWidth': instance.imageWidth,
      'imageHeight': instance.imageHeight,
      'contentType': instance.contentType,
      'originFileUrl': instance.originFileUrl,
      'mediumFileUrl': instance.mediumFileUrl,
      'thumbFileUrl': instance.thumbFileUrl,
      'originFileUrlForDownload': instance.originFileUrlForDownload,
      'mediumFileUrlForDownload': instance.mediumFileUrlForDownload,
      'thumbFileUrlForDownload': instance.thumbFileUrlForDownload,
      'coverId': instance.coverId,
      'coverAttachment': instance.coverAttachment,
      'coverPicUrl': instance.coverPicUrl
    };
