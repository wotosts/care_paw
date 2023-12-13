import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'animal.freezed.dart';

@freezed
class Animal with _$Animal {
  factory Animal(
      {required final int id,
      required final String name,
      required final String species,
      required final DateTime birth,
      required final String gender,
      final String? note,
      final String? imgUrl}) = _Animal;
}

enum Gender {
  male('수컷'),
  female('암컷'),
  neutral('중성');

  final String korean;

  const Gender(this.korean);
}
