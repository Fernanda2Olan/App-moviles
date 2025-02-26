import 'package:flutter/material.dart';
import 'package:rutas/screens/introduction_page.dart';
import 'package:rutas/screens/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroductionPage(),
      routes: {
        '/homepage': (context) => HomePage(),
      },
    );
  }
}
