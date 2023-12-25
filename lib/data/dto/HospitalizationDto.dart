import 'package:care_paw/model/hospitalization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'AnimalDto.dart';

part 'HospitalizationDto.freezed.dart';

part 'HospitalizationDto.g.dart';

@freezed
class HospitalizationDto with _$HospitalizationDto {
  const factory HospitalizationDto({
    @Default(0) final int id,
    required final int animal_id,
    required final int hospital_id,
    required final DateTime start_date,
    @JsonKey(name: 'Animal') required final AnimalDto? animal,
    DateTime? end_date,
    String? notes
  }) = _HospitalizationDto;

  factory HospitalizationDto.fromJson(Map<String, dynamic> json) =>
      _$HospitalizationDtoFromJson(json);
}

extension HospitalizationDtoExtension on HospitalizationDto {
  Map<String, dynamic> toInsertObject() => {
        "animal_id": animal_id,
        "hospital_id": hospital_id,
        "start_date": start_date.toString(),
        if (end_date != null) "end_date": end_date.toString(),
        "notes": notes,
      };

  Hospitalization toDomainObject(bool isBookmarked) => Hospitalization(
      id: id,
      animal: animal!.toDomainObject(),
      isBookmarked: isBookmarked,
      hospitalizationStartDate: start_date,
      hospitalizationEndDate: end_date);
}
