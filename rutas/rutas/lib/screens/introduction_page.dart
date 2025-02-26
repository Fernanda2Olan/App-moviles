import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (() => {
                //Ir a la página de inicio
                Navigator.pushNamed(context, '/homepage')
              }),
          child: Text('Regresar'),
        ),
      ),
    );
  }
}
