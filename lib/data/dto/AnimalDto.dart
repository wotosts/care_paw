import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'AnimalDto.g.dart';

part 'AnimalDto.freezed.dart';

@freezed
class AnimalDto with _$AnimalDto {
  const factory AnimalDto(
      {@Default(0) final int id,
      required final String name,
      required final String species,
      required final DateTime birth,
      required final String gender,
      required final int hospital_id,
      final String? note,
      final String? img_url}) = _AnimalDto;

  factory AnimalDto.fromJson(Map<String, dynamic> json) =>
      _$AnimalDtoFromJson(json);
}

extension AnimalDtoExtension on AnimalDto {
  Map<String, dynamic> toInsertObject() => {
        "name": name,
        "species": species,
        "birth": birth.toLocal().toString(),
        "gender": gender,
        "note": note,
        "img_url": img_url,
        "hospital_id": hospital_id
      };
}
