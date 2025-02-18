import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import '../widgets/input_personalizado.dart';
import '../widgets/lista_personalizada.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> bestias = ['Buey', 'Caballo', 'Burro', 'Cabra', 'Toro', 'Mula'];
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  List<String> imagenes = [
    'https://i.blogs.es/9e699f/img_8228/450_1000.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/a/a2/Biandintz_eta_zaldiak_-_modified2.jpg',
    'https://i.blogs.es/5dd289/photo-1623197247678-fb5e10f66075/500_333.jpeg',
    'https://upload.wikimedia.org/wikipedia/commons/b/b2/Hausziege_04.jpg',
    'https://t3.ftcdn.net/jpg/02/50/64/86/360_F_250648617_7wyDhQA4bfHk9eZum62DYmSL7lvetmuq.jpg',
    'https://okdiario.com/img/2019/11/01/el-origen-de-la-mula-655x368.jpg '
  ];
  List<Color> colores = [
    Colors.pink,
    Colors.cyan,
    Colors.amberAccent,
    Colors.blueGrey,
    Colors.greenAccent,
    Colors.tealAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ListView Crea las listas
      body: ListView.builder(
        //itemCount define el tamaño de las listas
        itemCount: bestias.length,
        itemBuilder: (context, index) {
          return ListaPersonalizada(
            title: bestias[index],
            number: numeros[index],
            imageUrl: imagenes[index],
            colorFondo: colores[index],
          );
        },
      ),
    );
  }
}
