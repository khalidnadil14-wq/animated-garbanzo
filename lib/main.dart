import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MiskQuranApp());
}

class MiskQuranApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Misk Quran',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> surahs = [
    'الفاتحة',
    'البقرة',
    'آل عمران',
    // زيد باقي السور
  ];

  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Misk Quran')),
      body: ListView.builder(
        itemCount: surahs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(surahs[index]),
            onTap: () async {
              // example mp3 file name: '001_al_fatiha.mp3'
              await player.play(AssetSource('quran/001_al_fatiha.mp3'));
            },
          );
        },
      ),
    );
  }
}
