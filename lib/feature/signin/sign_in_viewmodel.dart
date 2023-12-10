import 'package:care_paw/data/di.dart';
import 'package:care_paw/data/hospital_repository.dart';
import 'package:care_paw/data/user_repository.dart';
import 'package:care_paw/feature/signin/sign_in_state.dart';
import 'package:care_paw/model/hospital.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'sign_in_event.dart';

final signInViewModelProvider =
    StateNotifierProvider<SignInViewModel, SignInState>((ref) =>
        SignInViewModel(
            userRepository: ref.read(userRepositoryProvider),
            hospitalRepository: ref.read(hospitalRepositoryProvider)));

class SignInViewModel extends StateNotifier<SignInState> {
  SignInViewModel(
      {required this.userRepository, required this.hospitalRepository})
      : super(SignInState());

  final UserRepository userRepository;
  final HospitalRepository hospitalRepository;

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setNickname(String nickname) {
    state = state.copyWith(nickname: nickname);
  }

  void setHospital(Hospital hospital) {
    state = state.copyWith(hospital: hospital);
  }

  void setOccupation(String occupation) {
    state = state.copyWith(occupation: occupation);
  }

  bool isSignUpEnabled() {
    return state.hospital != null &&
        state.nickname?.isNotEmpty == true &&
        state.email.isNotEmpty &&
        state.password.isNotEmpty &&
        state.occupation?.isNotEmpty == true;
  }

  bool isSignedIn() => userRepository.getSignedInUser() != null;

  Future<void> signIn() async {
    final AuthResponse res = await userRepository
        .signIn(state.email, state.password)
        .catchError((e) {
      if (e is AuthException) {
        state = state.copyWith(event: SignInRequireSignUpEvent());

        getHospitals();
      }
    });

    final User? user = res.user;

    if (user != null) {
      state = state.copyWith(event: SignInCompleteEvent());
    }
  }

  Future<void> signUp() async {
    final AuthResponse res =
        await userRepository.signUp(state.email, state.password, {
      'nickname': state.nickname,
      'occupation': state.occupation,
      'hospitalId': state.hospital?.id
    }).catchError((e) {
      if (e is AuthException) {}
    });

    final User? user = res.user;
    state = state.copyWith(
        event:
            user == null ? SignInRequireSignUpEvent() : SignUpCompleteEvent());
  }

  Future<void> getHospitals() async {
    var hospitals = await hospitalRepository.getHospitals();
    state = state.copyWith(hospitals: hospitals);
  }

  void clearEvent() {
    state = state.copyWith(event: null);
  }
}
