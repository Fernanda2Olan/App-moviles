import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(elevation: 16.0, items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Perfil'),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings), label: 'Configuración'),
    ]);
  }
}
