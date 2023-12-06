import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    // primary key
    required String email,
    required String nickname,
    // 직책
    required String occupation
  }) = _User;
}