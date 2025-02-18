import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final String dataText;
  final MaterialColor color;
  final TextInputType keyboardType;

  InputPersonalizado({
    required this.labelText,
    required this.icon,
    required this.dataText,
    required this.color,
    this.keyboardType = TextInputType.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        icon: Icon(icon),
        iconColor: color,
        //label: Text("Escribe tu nombre"),
        labelText: labelText,
        hintText: "Aquí va tu nombre",
        helper: Text(dataText),

        //errorText: "Error 404",
        //prefixIcon: Icon(icon),
        //suffix: Icon(Icons.pause_circle_outline_outlined),
      ),
    );
  }
}
