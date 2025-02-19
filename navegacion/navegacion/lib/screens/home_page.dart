import 'package:flutter/material.dart';
import 'package:navegacion/providers/actualizar_navegacion_provider.dart';
import 'package:navegacion/screens/screen_2.dart';
import 'package:navegacion/screens/screen_3.dart';
import 'package:navegacion/widgets/custom_navigation_bar.dart';
import 'package:navegacion/screens/screen_4.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActualizarNavegacionProvider>(
        builder: (context, value, child) => Scaffold(
              bottomNavigationBar: CustomNavigationBar(),
              body: _HomePage(value: value),
            ));
  }
}

class _HomePage extends StatelessWidget {
  ActualizarNavegacionProvider value;
  _HomePage({required this.value});

  @override
  Widget build(BuildContext context) {
    // const indiceActual = 0;

    switch (value.indicePagina) {
      case 0:
        return Screen2();
      case 1:
        return Screen3();
      case 2:
        return Screen4();
      default:
        return Screen2();
    }
  }
}
