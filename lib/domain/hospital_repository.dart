import '../model/animal.dart';
import '../model/hospital.dart';
import '../model/hospitalization.dart';
import '../model/hospitalization_history_note.dart';
import '../model/user.dart';

abstract class HospitalRepository {
  Future<List<Hospital>> getHospitals();

  Future<List<Hospitalization>> getTodayHospitalizations(
      int hospitalId, String userId);

  Future<List<Hospitalization>> getBookmarkedHospitalizations(
      int hospitalId, String userId);

  Future<int> createHospitalization(
      int animalId, int hospitalId, DateTime startDate, DateTime? endDate);

  Future<int> createAnimal(Animal animal, int hospitalId);

  Future<Hospitalization?> getHospitalization(int id, String userId);

  Future<List<HospitalizationHistoryNote>> getHospitalizationNotes(
      int hospitalizationId);

  Future<void> addHospitalizationNote(
      String title, String description, List<String> imgUrls, User user);
}
