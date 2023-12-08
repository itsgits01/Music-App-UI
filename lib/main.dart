import 'package:flutter/material.dart';
import 'package:music_app/neu_box/neu_box.dart';
import 'package:music_app/song_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SongPage(),
    );
  }
}
