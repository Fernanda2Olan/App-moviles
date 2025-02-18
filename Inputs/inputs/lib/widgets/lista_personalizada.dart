import 'package:flutter/material.dart';

class ListaPersonalizada extends StatelessWidget {
  final String title;
  final int number;
  final String imageUrl;
  final Color colorFondo;

  const ListaPersonalizada({
    Key? key,
    required this.title,
    required this.number,
    required this.imageUrl,
    required this.colorFondo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: colorFondo,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Número: $number'),
            ],
          ),
        ],
      ),
    );
  }
}
