import 'package:care_paw/model/animal.dart';

import '../../../model/hospitalization_history_note.dart';

sealed class HospitalityDetailItemType {}

class HospitalityDetailDividerItem extends HospitalityDetailItemType {}

class HospitalityDetailAnimalItem extends HospitalityDetailItemType {
  HospitalityDetailAnimalItem(this.animal, this.startDate, this.endDate);

  final Animal animal;
  final DateTime startDate;
  final DateTime? endDate;
}

class HospitalityDetailHistoryNoteItem extends HospitalityDetailItemType {
  HospitalityDetailHistoryNoteItem(this.note);

  final HospitalizationHistoryNote note;
}

class HospitalityDetailTitleItem extends HospitalityDetailItemType {
  HospitalityDetailTitleItem(this.title);

  final String title;
}

class HospitalityDetailHistoryLoadingItem extends HospitalityDetailItemType {}

class HospitalityDetailHistoryEmptyItem extends HospitalityDetailItemType {}
