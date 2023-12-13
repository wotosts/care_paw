import 'package:care_paw/feature/hospitality/add/hospitality_add_or_edit_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final hospitalityAddOrEditViewModelProvider = StateNotifierProvider<
    HospitalityAddOrEditViewModel,
    HospitalityAddOrEditState>((ref) => HospitalityAddOrEditViewModel());

class HospitalityAddOrEditViewModel
    extends StateNotifier<HospitalityAddOrEditState> {
  HospitalityAddOrEditViewModel() : super(const HospitalityAddOrEditState());

  void setHospitalizationStartDate(DateTime? dateTime) {
    state = state.copyWith(hospitalizationStartDate: dateTime);
  }

  void setHospitalizationEndDate(DateTime? dateTime) {
    state = state.copyWith(hospitalizationEndDate: dateTime);
  }

  void setBirth(DateTime? dateTime) {
    state = state.copyWith(birth: dateTime);
  }
}
