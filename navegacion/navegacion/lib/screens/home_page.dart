import 'package:flutter/material.dart';
import 'package:navegacion/screens/screen_2.dart';
import 'package:navegacion/screens/screen_3.dart';
import 'package:navegacion/widgets/custom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const indiceActual = 0;

    switch (indiceActual) {
      case 0:
        return Screen2();
      case 1:
        return Screen3();
      default:
        return Screen2();
    }
  }
}
