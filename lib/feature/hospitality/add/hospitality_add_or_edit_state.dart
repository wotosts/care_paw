import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/animal.dart';

part 'hospitality_add_or_edit_state.freezed.dart';

@freezed
class HospitalityAddOrEditState with _$HospitalityAddOrEditState {
  const factory HospitalityAddOrEditState(
      {int? hospitalizationId,
      DateTime? birth,
      DateTime? hospitalizationStartDate,
      DateTime? hospitalizationEndDate,
      String? animalName,
      String? note,
      Species? species,
      Gender? gender,
      XFile? image,
      HospitalityAddOrEditEffect? effect}) = _HospitalityAddOrEditState;
}

sealed class HospitalityAddOrEditEffect {}

class HAOECompleteEffect extends HospitalityAddOrEditEffect {}