import 'dart:async';

import 'package:care_paw/data/di.dart';
import 'package:care_paw/data/user_repository.dart';
import 'package:care_paw/feature/components/LoadingController.dart';
import 'package:care_paw/feature/hospitality/add/hospitality_add_or_edit_state.dart';
import 'package:care_paw/util/EmptyExtensions.dart';
import 'package:care_paw/util/ImagePickerUtil.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/hospital_repository.dart';
import '../../../data/image_repository.dart';
import '../../../model/animal.dart';

final hospitalityAddOrEditViewModelProvider = StateNotifierProvider.autoDispose<
        HospitalityAddOrEditViewModel, HospitalityAddOrEditState>(
    (ref) => HospitalityAddOrEditViewModel(
        imageRepository: ref.read(imageRepositoryProvider),
        hospitalRepository: ref.read(hospitalRepositoryProvider),
        userRepository: ref.read(userRepositoryProvider),
        loadingController: ref.read(loadingControllerProvider.notifier)));

class HospitalityAddOrEditViewModel
    extends StateNotifier<HospitalityAddOrEditState> {
  final ImageRepository imageRepository;
  final HospitalRepository hospitalRepository;
  final UserRepository userRepository;
  final LoadingController loadingController;

  int? hospitalId;

  HospitalityAddOrEditViewModel(
      {required this.hospitalRepository,
      required this.imageRepository,
      required this.userRepository,
      required this.loadingController})
      : super(const HospitalityAddOrEditState()) {
    userRepository.currentUser().listen((event) {
      hospitalId = event?.hospitalId;
    });
  }

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

  Future<int> createHospitalization() async {
    loadingController.showLoading();
    try {
      var url = await imageRepository.uploadImage(
          Bucket.animal,
          state.image!.toFile(),
          '${hospitalId}_${state.animalName}_${state.species?.name}_${state.birth}');
      var animal = Animal(
          // todo 기존 동물 검색 기능 추가 시 id 업데이트
          id: 0,
          name: state.animalName.orEmpty(),
          species: state.species ?? Species.etc,
          birth: state.birth ?? DateTime.now(),
          gender: state.gender ?? Gender.neutral,
          imgUrl: url);
      var animalId = await hospitalRepository.createAnimal(animal, hospitalId!);

      var hospitalizationId = hospitalRepository.createHospitalization(
          animalId,
          hospitalId!,
          state.hospitalizationStartDate ?? DateTime.now(),
          state.hospitalizationEndDate);

      return hospitalizationId;
    } on Exception catch (_, e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      loadingController.hideLoading();
    }

    throw Exception();
  }
}
