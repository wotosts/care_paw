import 'package:freezed_annotation/freezed_annotation.dart';

part 'HospitalizationDto.freezed.dart';

part 'HospitalizationDto.g.dart';

@freezed
class HospitalizationDto with _$HospitalizationDto {
  const factory HospitalizationDto(
      {@Default(0) final int id,
      required final int animal_id,
      required final int hospital_id,
      required final DateTime start_date,
      DateTime? end_date,
      String? notes}) = _HospitalizationDto;

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
}
