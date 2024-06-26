import 'package:freezed_annotation/freezed_annotation.dart';

part 'hospital.freezed.dart';

part 'hospital.g.dart';

@freezed
class Hospital with _$Hospital {
  factory Hospital({
    required final int id,
    required final String name
  }) = _Hospital;

  factory Hospital.fromJson(Map<String, Object?> json) =>
      _$HospitalFromJson(json);
}