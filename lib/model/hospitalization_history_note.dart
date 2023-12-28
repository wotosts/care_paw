import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'hospitalization_history_note.freezed.dart';

@freezed
class HospitalizationHistoryNote with _$HospitalizationHistoryNote {
  factory HospitalizationHistoryNote({
    required int id,
    required DateTime added,
    required String title,
    required String userNickname,
    String? description,
    List<String>? imgUrls
  }) =
      _HospitalizationHistoryNote;
}
