import 'package:care_paw/feature/signin/sign_in_event.dart';
import 'package:care_paw/feature/signin/sign_in_viewmodel.dart';
import 'package:care_paw/model/hospital.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  factory SignInState(
      {@Default('') String email,
      @Default('') String password,
      String? nickname,
      Hospital? hospital,
      SignInEvent? event}) = _SignInState;
}
