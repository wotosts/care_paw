import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/hospitalization.dart';
import '../../model/user.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    User? user,
    List<Hospitalization>? list
  }) = _HomeState;
}