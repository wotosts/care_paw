import 'package:care_paw/data/database.dart';
import 'package:care_paw/data/dto/AnimalDto.dart';
import 'package:care_paw/data/dto/HospitalizationDto.dart';
import 'package:flutter/foundation.dart';

import '../model/animal.dart';
import '../model/hospital.dart';
import '../model/hospitalization.dart';

abstract class HospitalRepository {
  Future<List<Hospital>> getHospitals();

  Future<List<Hospitalization>> getTodayHospitalization(
      int hospitalId, String userId);

  Future<int> createHospitalization(
      int animalId, int hospitalId, DateTime startDate, DateTime? endDate);

  Future<int> createAnimal(Animal animal, int hospitalId);
}

class HospitalRepositoryImpl extends HospitalRepository {
  @override
  Future<List<Hospitalization>> getTodayHospitalization(
      int hospitalId, String userId) async {
    var list = await supabase
        .from(DBTable.Hospitalization.name)
        .select<List<Map<String, dynamic>>>(
            '*, ${DBTable.Animal.name}(*)')
        .eq('hospital_id', hospitalId);
    var bookmarked = await supabase
        .from(DBTable.Bookmark.name)
        .select<List<Map<String, dynamic>>>()
        .eq('user_id', userId)
        .then((value) => value.map((e) => e['hospitalization_id']).toSet());

    return list.map((e) {
      var dto = HospitalizationDto.fromJson(e);
      var animal = AnimalDto.fromJson(e[DBTable.Animal.name]).toDomainObject();

      return Hospitalization(
          id: dto.id,
          animal: animal,
          isBookmarked: bookmarked.contains(dto.id),
          hospitalizationStartDate: dto.start_date,
          hospitalizationEndDate: dto.end_date);
    }).toList();
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

  @override
  Future<int> createHospitalization(int animalId, int hospitalId,
      DateTime startDate, DateTime? endDate) async {
    var hospitalizationDto = HospitalizationDto(
      id: 0,
      animal_id: animalId,
      hospital_id: hospitalId,
      start_date: startDate,
      end_date: endDate,
    );

    return supabase
        .from(DBTable.Hospitalization.name)
        .insert(hospitalizationDto.toInsertObject())
        .select()
        .single()
        .then((value) => HospitalizationDto.fromJson(value).id);
  }

  @override
  Future<int> createAnimal(Animal animal, int hospitalId) async {
    var animalDto = AnimalDto(
        id: animal.id,
        name: animal.name,
        species: animal.species.name,
        birth: animal.birth,
        gender: animal.gender.name,
        note: animal.note,
        img_url: animal.imgUrl,
        hospital_id: hospitalId);

    var addedAnimalDto = await supabase
        .from(DBTable.Animal.name)
        .insert(animalDto.toInsertObject())
        .select()
        .single()
        .then((value) => AnimalDto.fromJson(value));

    return addedAnimalDto.id;
  }
}
