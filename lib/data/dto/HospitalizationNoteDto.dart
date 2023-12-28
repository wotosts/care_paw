import 'dart:convert';

import 'package:care_paw/model/hospitalization_history_note.dart';
import 'package:care_paw/model/supabase_user.dart';
import 'package:care_paw/util/EmptyExtensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'HospitalizationNoteDto.freezed.dart';

part 'HospitalizationNoteDto.g.dart';

@freezed
class HospitalizationNoteDto with _$HospitalizationNoteDto {
  const factory HospitalizationNoteDto(
      {required int id,
      required DateTime created_at,
      required String title,
      required String user_id,
      required String user_nickname,
      String? description,
      String? img_urls}) = _HospitalizationNoteDto;

  factory HospitalizationNoteDto.fromJson(Map<String, dynamic> json) =>
      _$HospitalizationNoteDtoFromJson(json);
}

extension HospitalizationNoteDtoExtension on HospitalizationNoteDto {
  Map<String, dynamic> toInsertObject() => {
        "title": title,
        "user_id": user_id,
      };

  HospitalizationHistoryNote toDomainObject() => HospitalizationHistoryNote(
      id: id,
      added: created_at,
      title: title,
      userNickname: user_nickname,
      description: description,
      imgUrls: jsonDecode(img_urls ?? '{\"img_urls\" : null}')[img_urls]?.toList());
}
