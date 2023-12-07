import 'package:care_paw/data/di.dart';
import 'package:care_paw/data/user_repository.dart';
import 'package:care_paw/feature/signin/sign_in_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'sign_in_event.dart';


final signInViewModelProvider =
    StateNotifierProvider<SignInViewModel, SignInState>((ref) =>
        SignInViewModel(userRepository: ref.read(userRepositoryProvider)));


class SignInViewModel extends StateNotifier<SignInState> {
  SignInViewModel({required this.userRepository}) : super(SignInState());

  final UserRepository userRepository;

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  bool isSignedIn() => userRepository.getSignedInUser() != null;

  Future<void> signIn() async {
    final AuthResponse res = await userRepository
        .signIn(state.email, state.password)
        .catchError((e) {
      if (e is AuthException) {
        state = state.copyWith(event: SignInRequireSignUpEvent());
      }
    }, test: (e) => e is AuthException);

    final User? user = res.user;

    if (user != null) {
      state = state.copyWith(event: SignInCompleteEvent());
    }
  }

  Future<void> signUp() async {
    final AuthResponse res = await userRepository.signUp(
        state.email, state.password, {
      'nickname': state.nickname,
      'hospitalId': state.hospital?.id
    }).catchError((e) {
      if (e is AuthException) {}
    }, test: (e) => e is AuthException);

    final User? user = res.user;

    if (user == null) {
      state = state.copyWith(event: SignInRequireSignUpEvent());
    }
  }
}
