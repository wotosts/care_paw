import 'package:care_paw/data/database.dart';
import 'package:care_paw/data/dto/AnimalDto.dart';
import 'package:care_paw/data/dto/HospitalizationDto.dart';
import 'package:flutter/foundation.dart';

import '../model/animal.dart';
import '../model/hospital.dart';
import '../model/hospitalization.dart';

abstract class HospitalRepository {
  Future<List<Hospital>> getHospitals();

  Future<List<Hospitalization>> getTodayHospitalizations(
      int hospitalId, String userId);

  Future<int> createHospitalization(
      int animalId, int hospitalId, DateTime startDate, DateTime? endDate);

  Future<int> createAnimal(Animal animal, int hospitalId);
}

class HospitalRepositoryImpl extends HospitalRepository {
  @override
  Future<List<Hospitalization>> getTodayHospitalizations(
      int hospitalId, String userId) async {
    var (list, bookmarked) = await (
      supabase
          .from(DBTable.Hospitalization.name)
          .select<List<Map<String, dynamic>>>('*, ${DBTable.Animal.name}(*)')
          .eq('hospital_id', hospitalId),
      supabase
          .from(DBTable.Bookmark.name)
          .select<List<Map<String, dynamic>>>()
          .eq('user_id', userId)
          .then((value) => value.map((e) => e['hospitalization_id']).toSet())
    ).wait;

    return list.map((e) {
      var dto = HospitalizationDto.fromJson(e);
      return dto.toDomainObject(bookmarked.contains(dto.id));
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
      animal: null,
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
