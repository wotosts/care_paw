import 'package:care_paw/model/hospitalization.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/animal.dart';
import '../../model/user.dart';

abstract class HomeEvent {}

class HomeBookmarkChangeEvent extends HomeEvent {
  final bool newState;

  HomeBookmarkChangeEvent(this.newState);
}

// todo to use riverpod code generator
final homeViewModelProvider =
    ChangeNotifierProvider<HomeViewModel>((ref) => HomeViewModel());

@riverpod
class HomeViewModel extends ChangeNotifier {
  List<Hospitalization>? list;
  User? user;

  HomeViewModel() {
    // todo merge strem and update state once
    _getTodayHospitalizationHistories().then((value) {
      list = value;
    }).whenComplete(notifyListeners);

    _getCurrentUser().then((value) {
      user = value;
    }).whenComplete(notifyListeners);
  }

  void handleEvent(HomeEvent event) {}

  Future<List<Hospitalization>>
      _getTodayHospitalizationHistories() async {
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

  Future<User> _getCurrentUser() async {
    // todo test user
    return User(nickname: '멍지쌤', email: 'tosts522@gmail.com', occupation: '견주');
  }

  Future<void> _changeBookmarked(bool newBookmarkState) async {}
}
