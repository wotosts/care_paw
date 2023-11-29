import 'package:care_paw/main.dart';
import 'package:care_paw/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

// todo 나중에 go_router 써보기
var routes = (RouteSettings settings) => MaterialPageRoute(
    builder: (context) => switch (RoutePath.getByName(settings.name)) {
          RoutePath.home => const HomeScreen(),
        },
    settings: settings);

enum RoutePath {
  home('home');

  const RoutePath(this.path);

  final String path;

  factory RoutePath.getByName(String? path) {
    return RoutePath.values.firstWhere((element) => element.name == path);
  }
}

extension RouteExtension on BuildContext {
  void push(RoutePath route, {Object? arguments, bool popItself = false}) {
    if (popItself) {
      Navigator.of(this).popAndPushNamed(route.path, arguments: arguments);
    } else {
      Navigator.of(this).pushNamed(route.path, arguments: arguments);
    }
  }
}
