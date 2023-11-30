import 'package:freezed_annotation/freezed_annotation.dart';

import 'animal.dart';
import 'hospitalization_history_note.dart';
import 'package:intl/intl.dart';

part 'hospitalization_history.freezed.dart';

@freezed
class HospitalizationHistory with _$HospitalizationHistory {

  const HospitalizationHistory._();

  factory HospitalizationHistory({
    required Animal animal,
    required bool isBookmarked, // dto 따로 잡기.. 유저별 bookmark list
    required DateTime hospitalizationStartDate,
    DateTime? hospitalizationEndDate,
    List<HospitalizationHistoryNote>? notes
  }) = _HospitalizationHistory;

  String hospitalizationDateString() {
    var format = 'yy.MM.dd (E)';
    return '${DateFormat(format).format(hospitalizationStartDate)} ~ ${hospitalizationEndDate != null ? DateFormat(format).format(hospitalizationEndDate!) :  ''}';
    }
}

// extension HospitalizationHistoryExtension on _HospitalizationHistory {
// String hospitalizationDateString() {
//   var format = 'yy.MM.dd (E)';
//   return DateFormat(format).format() + ' ~ ' + if(hospitalizationStartDate != null) DateFormat(format).format(hospitalizationEndDate);
// }