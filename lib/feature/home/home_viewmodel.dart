import 'package:care_paw/data/di.dart';
import 'package:care_paw/model/hospitalization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/user_repository.dart';
import '../../model/animal.dart';
import 'home_state.dart';

abstract class HomeEvent {}

class HomeBookmarkChangeEvent extends HomeEvent {
  final bool newState;

  HomeBookmarkChangeEvent(this.newState);
}

// todo to use riverpod code generator
final homeViewModelProvider = StateNotifierProvider<HomeViewModel, HomeState>(
    (ref) => HomeViewModel(userRepository: ref.read(userRepositoryProvider)));

class HomeViewModel extends StateNotifier<HomeState> {
  final UserRepository userRepository;

  HomeViewModel({required this.userRepository}) : super(HomeState()) {
    // todo merge stream and update state once
    _getTodayHospitalizationHistories().then((value) {
      state = state.copyWith(list: value);
    });

    userRepository.currentUser().listen((value) {
      state = state.copyWith(user: value);
    });
  }

  void handleEvent(HomeEvent event) {}

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

  Future<void> _changeBookmarked(bool newBookmarkState) async {}

  Future<void> signOut() async => userRepository.signOut();
}
