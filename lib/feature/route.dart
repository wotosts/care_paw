import 'package:care_paw/feature/hospitality/add/hospitality_add_or_edit_screen.dart';
import 'package:care_paw/feature/hospitality/detail/hospitality_detail_screen.dart';
import 'package:care_paw/feature/signin/sign_up_screen.dart';
import 'package:care_paw/feature/signin/splash_screen.dart';
import 'package:care_paw/feature/home/home_screen.dart';
import 'package:flutter/material.dart';

// todo 나중에 go_router 써보기
var routes = (RouteSettings settings) => MaterialPageRoute(
    builder: (context) => switch (RoutePath.getByName(settings.name)) {
          RoutePath.splash => const SplashScreen(), // 앱 재시작 or login?
          RoutePath.signUp => const SignUpScreen(),
          RoutePath.home => const HomeScreen(),
          RoutePath.addAnimal => const HospitalityAddOrEditScreen(),
          RoutePath.hospitalizationDetail =>
            HospitalityDetailScreen(animalId: settings.arguments as int)
        },
    settings: settings);

enum RoutePath {
  splash('splash'),
  signUp('sign_up'),
  home('home'),
  addAnimal('add_animal'),
  hospitalizationDetail('hospitalization_detail');

  const RoutePath(this.path);

  final String path;

  factory RoutePath.getByName(String? path) {
    return RoutePath.values.firstWhere((element) => element.path == path);
  }
}

extension RouteExtension on BuildContext {
  void push(RoutePath route,
      {Object? arguments, bool popItself = false, bool clear = false}) {
    var navigator = Navigator.of(this);

    if (clear) {
      navigator.pushNamedAndRemoveUntil(route.path,
          (currentRoute) => false, arguments: arguments);
    } else if (popItself) {
      navigator.popAndPushNamed(route.path, arguments: arguments);
    } else {
      navigator.pushNamed(route.path, arguments: arguments);
    }
  }
}
