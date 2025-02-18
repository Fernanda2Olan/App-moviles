import 'package:flutter/material.dart';
import '../widgets/categorias.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PeliPro 🎬",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff457b9d),
      ),
      body: Container(
        color: Color(0xff669bbc),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Categorias("Estrenos de la semana ▶️", [
                "assets/images/pelicula4.jpg",
                "assets/images/pelicula1.jpeg",
                "assets/images/pelicula2.jpg",
                "assets/images/pelicula3.jpg",
                "assets/images/pelicula5.jpeg",
                "assets/images/pelicula6.jpeg",
                "assets/images/pelicula7.jpg",
              ]),
              SizedBox(height: 20),
              Categorias("Próximos estrenos 🎞️", [
                "assets/images/P1.jpg",
                "assets/images/P2.jpg",
                "assets/images/P3.jpg",
                "assets/images/P4.jpg",
                "assets/images/P5.jpg",
                "assets/images/P6.jpeg",
                "assets/images/P7.jpg",
              ]),
              Categorias("Recomendados ✅", [
                "assets/images/R1.jpeg",
                "assets/images/R2.jpg",
                "assets/images/R3.jpg",
                "assets/images/R4.jpg",
                "assets/images/R5.jpg",
                "assets/images/R6.jpg",
                "assets/images/R7.jpeg",
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
