import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'animal.freezed.dart';

@freezed
class Animal with _$Animal {
  factory Animal(
      {required final int id,
      required final String name,
      required final Species species,
      required final DateTime birth,
      required final Gender gender,
      final String? note,
      final String? imgUrl}) = _Animal;
}

// todo i18n
enum Gender {
  male('수컷'),
  female('암컷'),
  neutral('중성');

  final String korean;

  const Gender(this.korean);
}

enum Species {
  dog('개'),
  cat('고양이'),
  bird('새'),
  hamster('햄스터'),
  rabbit('토끼'),
  reptile('도마뱀'),
  etc('기타');

  final String korean;

  const Species(this.korean);
}
