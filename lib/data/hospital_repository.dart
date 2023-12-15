import 'package:care_paw/data/database.dart';
import 'package:flutter/foundation.dart';

import '../model/animal.dart';
import '../model/hospital.dart';
import '../model/hospitalization.dart';

abstract class HospitalRepository {
  Future<List<Hospital>> getHospitals();
}

class HospitalRepositoryImpl extends HospitalRepository {
  Future<List<Hospitalization>> _getTodayHospitalizationHistories() async {
    return [
      Hospitalization(
          id: 0,
          animal: Animal(
              id: 0,
              name: '먼지',
              species: '개',
              birth: DateTime.parse('2016-08-10'),
              gender: '중성화',
              note: '침많이흘림 질질질질'),
          isBookmarked: false,
          hospitalizationStartDate: DateTime.parse('2023-11-27'),
          hospitalizationEndDate: DateTime.parse('2023-12-15')),
      Hospitalization(
        id: 1,
        animal: Animal(
            id: 1,
            name: '까미',
            species: '개',
            birth: DateTime.parse('2012-08-10'),
            gender: '수컷',
            note: '짱쎔'),
        isBookmarked: true,
        hospitalizationStartDate: DateTime.parse('2023-11-27'),
      ),
      Hospitalization(
          id: 2,
          animal: Animal(
            id: 2,
            name: '먀먀',
            species: '고양이',
            birth: DateTime.parse('2020-11-10'),
            gender: '중성화',
          ),
          isBookmarked: true,
          hospitalizationStartDate: DateTime.parse('2023-11-27'),
          hospitalizationEndDate: DateTime.parse('2023-12-15')),
      Hospitalization(
        id: 3,
        animal: Animal(
            id: 3,
            name: '퐝당',
            species: '새',
            birth: DateTime.parse('2020-03-05'),
            gender: '수컷',
            note: '겁나 시끄러움'),
        isBookmarked: false,
        hospitalizationStartDate: DateTime.parse('2023-11-27'),
      )
    ];
  }

  @override
  Future<List<Hospital>> getHospitals() async {
    var list = await supabase
        .from(DBTable.Hospital.name)
        .select<List<Map<String, dynamic>>>();

    if (kDebugMode) {
      print('getHospitals: + ${list.toString()}');
    }

    return list.map((e) => Hospital.fromJson(e)).toList();
  }
}
