import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/di.dart';
import '../../model/hospitalization.dart';

part 'my_info_page_viewmodel.g.dart';

@riverpod
Future<List<Hospitalization>> getBookmarkedHospitalizations(
    GetBookmarkedHospitalizationsRef ref) async {
  var hospitalRepository = ref.read(hospitalRepositoryProvider);
  var userRepository = ref.read(userRepositoryProvider);
  var user = await userRepository.currentUser().first;

  if (user == null) return [];

  var hospitalizations = await hospitalRepository.getBookmarkedHospitalizations(
      user.hospitalId, user.id);

  return hospitalizations;
}
