import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required String nickname,
    required String email,
    // 직책
    required String occupation
  }) = _User;
}