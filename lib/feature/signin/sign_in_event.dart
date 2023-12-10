sealed class SignInEvent {}

class SignInRequireSignUpEvent extends SignInEvent {}

class SignInCompleteEvent extends SignInEvent {}

class SignUpCompleteEvent extends SignInEvent {}