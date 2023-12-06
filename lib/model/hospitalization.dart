import 'package:freezed_annotation/freezed_annotation.dart';

import 'animal.dart';
import 'hospitalization_history_note.dart';
import 'package:intl/intl.dart';

part 'hospitalization.freezed.dart';

@freezed
class Hospitalization with _$Hospitalization {

  const Hospitalization._();

  factory Hospitalization({
    required final int id,
    required Animal animal,
    required bool isBookmarked, // dto 따로 잡기.. 유저별 bookmark list
    required DateTime hospitalizationStartDate,
    DateTime? hospitalizationEndDate,
    List<HospitalizationHistoryNote>? notes
  }) = _Hospitalization;

  String hospitalizationDateString() {
    var format = 'yy.MM.dd (E)';
    return '${DateFormat(format).format(hospitalizationStartDate)} ~ ${hospitalizationEndDate != null ? DateFormat(format).format(hospitalizationEndDate!) :  ''}';
    }
}