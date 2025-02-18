import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          elevation: 0.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pantalla 2',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Hola de nuevo',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate([]))
      ],
    );
  }
}
