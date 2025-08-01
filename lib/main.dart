import 'package:flutter/material.dart';
import 'package:flutter_material3_expressive_progress_indicator/screens/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          year2023: false,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      home: Scaffold(body: IndicatorExampleScreen()),
    );
  }
}
