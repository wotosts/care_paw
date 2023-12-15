import 'package:care_paw/feature/route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'feature/signin/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://slrafytgdorwxxdcaasi.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNscmFmeXRnZG9yd3h4ZGNhYXNpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDEwNzAwNzcsImV4cCI6MjAxNjY0NjA3N30.rgdxCqjZ-uxcMRN1wI2waxhHqPsBWg0FETPJ5uBOWmo',
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ThemeData _getCarePawTheme() {
    return ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF984061),
          brightness: Brightness.light,
        ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _getCarePawTheme(),
      home: const SplashScreen(),
      onGenerateRoute: routes,
    );
  }
}
