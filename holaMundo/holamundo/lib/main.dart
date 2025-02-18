import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My app"),
          centerTitle: true,
          backgroundColor: Color(0xffffb3c1),
        ),
        body: Container(
          width: double.infinity,
          color: Color(0xffffccd5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  'https://storage.googleapis.com/oceanwide_web/media-dynamic/cache/widen_1600/media/default/0001/05/30627f237982b80399f5d2db0c8daeeea38a5950.jpeg',
                ),
                Text(
                  'Pic',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Image.network(
                  'https://files.worldwildlife.org/wwfcmsprod/images/Polar_bear_and_Cubs_DRTV/story_full_width/6incjmn6te_hych_drtv_pb_fullbleed.jpg',
                  fit: BoxFit.contain,
                ),
                Image.network(
                    'https://simonsabogados.com/wp-content/uploads/2022/06/hans-jurgen-mager-qQWV91TTBrE-unsplash.jpg')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
