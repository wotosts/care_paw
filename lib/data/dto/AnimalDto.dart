import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/animal.dart';

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

  Animal toDomainObject() => Animal(
      id: id,
      name: name,
      species: Species.values.byName(species),
      birth: birth,
      gender: Gender.values.byName(gender),
      note: note,
      imgUrl: img_url);
}
