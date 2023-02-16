import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  List<Audio> _notes = [
    Audio.load('assets/sounds/assets_note1.wav'),
    Audio.load('assets/sounds/assets_note2.wav'),
    Audio.load('assets/sounds/assets_note3.wav'),
    Audio.load('assets/sounds/assets_note4.wav'),
    Audio.load('assets/sounds/assets_note5.wav'),
    Audio.load('assets/sounds/assets_note6.wav'),
    Audio.load('assets/sounds/assets_note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(
              Color.fromARGB(255, 255, 17, 0),
              0,
            ),
            buildKey(Color.fromARGB(255, 255, 123, 0), 1),
            buildKey(Colors.yellow, 2),
            buildKey(Color.fromARGB(255, 5, 231, 12), 3),
            buildKey(Color.fromARGB(255, 14, 215, 241), 4),
            buildKey(Colors.blue, 5),
            buildKey(Colors.purple, 6),
          ],
        ),
      ),
    );
  }

  Widget buildKey(Color color, int noteIndex) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          _notes[noteIndex].play();
        },
        child: Container(),
      ),
    );
  }
}
