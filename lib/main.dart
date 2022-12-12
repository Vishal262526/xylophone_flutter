import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player = AudioPlayer();

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void play(String name) async => await player.play(AssetSource('$name.wav'));

  Expanded buildKey({Color? color, String? soundName}) =>
      Expanded(
        child: InkWell(
          onTap: () {
            play('$soundName');
          },
          child: Container(
            color: color,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              buildKey(color: Colors.red, soundName: 'note1'),
              buildKey(color: Colors.yellow, soundName: 'note2'),
              buildKey(color: Colors.blue, soundName: 'note3'),
              buildKey(color: Colors.green, soundName: 'note4'),
              buildKey(color: Colors.purple, soundName: 'note5'),
              buildKey(color: Colors.red, soundName: 'note6'),
              buildKey(color: Colors.yellow, soundName: 'note7'),
            ],
          ),
        ),
      ),
    );
  }
}
