import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Sound(int soundNumber1) {
    final player = AudioCache();
    player.play('note$soundNumber1.wav');
  }

  Expanded BuildKey({Color color, int soundNumber, String text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          Sound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildKey(color: Colors.red, soundNumber: 1, text: 'Do'),
                BuildKey(color: Colors.orange, soundNumber: 2, text: 'Ri'),
                BuildKey(color: Colors.yellow, soundNumber: 3, text: 'Mi'),
                BuildKey(color: Colors.teal, soundNumber: 4, text: 'Fa'),
                BuildKey(color: Colors.blue, soundNumber: 5, text: 'So'),
                BuildKey(color: Colors.purple, soundNumber: 6, text: 'Li'),
                BuildKey(color: Colors.green, soundNumber: 7, text: 'Sa'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
