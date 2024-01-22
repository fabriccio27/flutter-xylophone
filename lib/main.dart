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
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('note1.wav'));
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)
                  ),
                  child: Text(
                    '',
                    selectionColor: Colors.red
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('note2.wav'));
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)
                  ),
                  child: Text(
                    '',
                    selectionColor: Colors.green
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('note3.wav'));
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)
                  ),
                  child: Text(
                    '',
                    selectionColor: Colors.blue
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('note4.wav'));
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple)
                  ),
                  child: Text(
                    '',
                    selectionColor: Colors.blue
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('note5.wav'));
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)
                  ),
                  child: Text(
                    '',
                    selectionColor: Colors.blue
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('note6.wav'));
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)
                  ),
                  child: Text(
                    '',
                    selectionColor: Colors.blue
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('note7.wav'));
                  },
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green[900])
                  ),
                  child: Text(
                    '',
                    selectionColor: Colors.blue
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
