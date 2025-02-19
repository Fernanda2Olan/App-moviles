import 'package:flutter/material.dart';
import 'package:navegacion/providers/actualizar_navegacion_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActualizarNavegacionProvider>(
        builder: (context, value, child) => BottomNavigationBar(
              onTap: (value) {
                // Obtener acceso a las funciones
                final indiceActual =
                    context.read<ActualizarNavegacionProvider>();

                //usar las funciones
                indiceActual.actualizarIndice(value);
              },
              elevation: 16.0,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Inicio'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: 'Perfil'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Configuración'),
              ],
            ));
  }
}
