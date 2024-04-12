import 'package:care_paw/feature/components/LoadingController.dart';
import 'package:care_paw/feature/route.dart';
import 'package:care_paw/util/EmptyExtensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'feature/signin/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: dotenv.env['sp_url'].orEmpty(),
    anonKey: dotenv.env['sp_key'].orEmpty(),
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
      builder: (context, widget) => CPLoading(widget: widget),
    );
  }
}
