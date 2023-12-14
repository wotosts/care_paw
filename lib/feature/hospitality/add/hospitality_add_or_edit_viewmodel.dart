import 'package:care_paw/feature/hospitality/add/hospitality_add_or_edit_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/animal.dart';

final hospitalityAddOrEditViewModelProvider = StateNotifierProvider.autoDispose<
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

  void setImage(XFile? image) {
    state = state.copyWith(image: image);
  }

  void setAnimalName(String name) {
    state = state.copyWith(animalName: name);
  }

  void setSpecies(Species? species) {
    state = state.copyWith(species: species);
  }

  void setGender(Gender? gender) {
    state = state.copyWith(gender: gender);
  }

  void setNote(String? note) {
    state = state.copyWith(note: note);
  }
}
