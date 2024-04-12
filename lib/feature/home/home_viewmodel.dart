import 'package:care_paw/data/di.dart';
import 'package:care_paw/model/hospitalization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/hospital_repository.dart';
import '../../domain/user_repository.dart';
import 'home_state.dart';

abstract class HomeEvent {}

class HomeBookmarkChangeEvent extends HomeEvent {
  final bool newState;

  HomeBookmarkChangeEvent(this.newState);
}

// todo to use riverpod code generator
final homeViewModelProvider = StateNotifierProvider<HomeViewModel, HomeState>(
    (ref) => HomeViewModel(
        userRepository: ref.read(userRepositoryProvider),
        hospitalRepository: ref.read(hospitalRepositoryProvider)));

class HomeViewModel extends StateNotifier<HomeState> {
  final UserRepository userRepository;
  final HospitalRepository hospitalRepository;

  HomeViewModel(
      {required this.userRepository, required this.hospitalRepository})
      : super(HomeState()) {
    // todo merge stream and update state once
    _getTodayHospitalizationHistories().then((value) {
      state = state.copyWith(list: value);
    });

    userRepository.currentUser().listen((value) {
      state = state.copyWith(user: value);
    });
  }

  void handleEvent(HomeEvent event) {}

  Future<List<Hospitalization>> _getTodayHospitalizationHistories() async {
    var user = await userRepository.currentUser().first;
    return hospitalRepository.getTodayHospitalizations(
        user!.hospitalId, user!.id);
  }

  Future<void> _changeBookmarked(bool newBookmarkState) async {}

  Future<void> signOut() async => userRepository.signOut();
}
