import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
            ),
          ),
          child: getbody(),
        ),
      ),
    ),
  );
}

Widget getbody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: 50.0,
                height: 50.0,
                child: TextButton(
                  onPressed: () {
                    playSound("h1.wav");
                  },
                  child: Text(""),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 50.0,
                height: 50.0,
                child: TextButton(
                  onPressed: () {
                    playSound("h2.wav");
                  },
                  child: Text(""),
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: 50.0,
                height: 50.0,
                child: TextButton(
                  onPressed: () {
                    playSound("c1.wav");
                  },
                  child: Text(""),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 50.0,
                height: 50.0,
                child: TextButton(
                  onPressed: () {
                    playSound("c2.wav");
                  },
                  child: Text(""),
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: 50.0,
                height: 50.0,
                child: TextButton(
                  onPressed: () {
                    playSound("k1.wav");
                  },
                  child: Text(""),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 50.0,
                height: 50.0,
                child: TextButton(
                  onPressed: () {
                    playSound("k2.wav");
                  },
                  child: Text(""),
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}

playSound(String soundName) {
  var player = AudioCache();
  player.play(soundName);
}
