// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HospitalizationNoteDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HospitalizationNoteDtoImpl _$$HospitalizationNoteDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HospitalizationNoteDtoImpl(
      id: json['id'] as int,
      created_at: DateTime.parse(json['created_at'] as String),
      title: json['title'] as String,
      user_id: json['user_id'] as String,
      user_nickname: json['user_nickname'] as String,
      description: json['description'] as String?,
      img_urls: json['img_urls'] as String?,
    );

Map<String, dynamic> _$$HospitalizationNoteDtoImplToJson(
        _$HospitalizationNoteDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'title': instance.title,
      'user_id': instance.user_id,
      'user_nickname': instance.user_nickname,
      'description': instance.description,
      'img_urls': instance.img_urls,
    };
