// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HospitalizationDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HospitalizationDtoImpl _$$HospitalizationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HospitalizationDtoImpl(
      id: json['id'] as int? ?? 0,
      animal_id: json['animal_id'] as int,
      hospital_id: json['hospital_id'] as int,
      start_date: DateTime.parse(json['start_date'] as String),
      end_date: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$HospitalizationDtoImplToJson(
        _$HospitalizationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'animal_id': instance.animal_id,
      'hospital_id': instance.hospital_id,
      'start_date': instance.start_date.toIso8601String(),
      'end_date': instance.end_date?.toIso8601String(),
      'notes': instance.notes,
    };
