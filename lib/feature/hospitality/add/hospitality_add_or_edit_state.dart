import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/animal.dart';

part 'hospitality_add_or_edit_state.freezed.dart';

@freezed
class HospitalityAddOrEditState with _$HospitalityAddOrEditState {
  const factory HospitalityAddOrEditState({
    int? hospitalizationId,
    DateTime? birth,
    DateTime? hospitalizationStartDate,
    DateTime? hospitalizationEndDate,
    String? animalName,
    String? note,
    String? species,
    Gender? gender
  }) = _HospitalityAddOrEditState;
}
