import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

Widget buildKey({Color color = Colors.white, int noteNumber = 1}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(noteNumber);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(color: color))),
      ),
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, noteNumber: 1),
                buildKey(color: Colors.orange, noteNumber: 2),
                buildKey(color: Colors.yellow, noteNumber: 3),
                buildKey(color: Colors.green, noteNumber: 4),
                buildKey(color: Colors.teal, noteNumber: 5),
                buildKey(color: Colors.blue, noteNumber: 6),
                buildKey(color: Colors.purple, noteNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void playSound(int noteNumber) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$noteNumber.wav'));
}
