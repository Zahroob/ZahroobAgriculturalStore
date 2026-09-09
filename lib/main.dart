import 'package:flutter/material.dart';
import 'package:zahroobstor/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F3ED),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.Splash,
      routes: AppRoutes().appRoutes,
    );
  }
}
