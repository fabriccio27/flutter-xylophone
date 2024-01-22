import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text('', selectionColor: Colors.red),
                ),
                TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                  child: Text('', selectionColor: Colors.green),
                ),
                TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow)),
                  child: Text('', selectionColor: Colors.blue),
                ),
                TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                  child: Text('', selectionColor: Colors.blue),
                ),
                TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  child: Text('', selectionColor: Colors.blue),
                ),
                TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Text('', selectionColor: Colors.blue),
                ),
                TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green[900])),
                  child: Text('', selectionColor: Colors.blue),
                )
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
