// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AnimalDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimalDtoImpl _$$AnimalDtoImplFromJson(Map<String, dynamic> json) =>
    _$AnimalDtoImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String,
      species: json['species'] as String,
      birth: DateTime.parse(json['birth'] as String),
      gender: json['gender'] as String,
      hospital_id: json['hospital_id'] as int,
      note: json['note'] as String?,
      img_url: json['img_url'] as String?,
    );

Map<String, dynamic> _$$AnimalDtoImplToJson(_$AnimalDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'species': instance.species,
      'birth': instance.birth.toIso8601String(),
      'gender': instance.gender,
      'hospital_id': instance.hospital_id,
      'note': instance.note,
      'img_url': instance.img_url,
    };
