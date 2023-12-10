import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

enum Occupation {
  vet('수의사'),
  technician('테크니션');

  final String korean;

  const Occupation(this.korean);
}

@freezed
class User with _$User {
  factory User(
      {
      // primary key
      required String email,
      required String nickname,
      // 직책
      required String occupation,
      required int hospitalId}) = _User;
}
