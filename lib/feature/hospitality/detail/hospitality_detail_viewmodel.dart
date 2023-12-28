import 'package:care_paw/data/di.dart';
import 'package:care_paw/feature/components/LoadingController.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/hospitalization.dart';

part 'hospitality_detail_viewmodel.g.dart';

@riverpod
Future<Hospitalization?> getHospitalizationDetail(
    GetHospitalizationDetailRef ref,
    {required int id}) async {
  var loadingController = ref.read(loadingControllerProvider.notifier);
  var hospitalRepository = ref.read(hospitalRepositoryProvider);
  var userRepository = ref.read(userRepositoryProvider);

  final user = await userRepository.currentUser().first;

  loadingController.showLoading();

  var hospitalization = await hospitalRepository
      .getHospitalization(id, user?.id ?? '')
      .catchError((e) {
    if (kDebugMode) {
      print(e);
    }
  }).whenComplete(() => loadingController.hideLoading());

  return hospitalization;
}