import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Appication());
}

class Appication extends StatelessWidget {
  const Appication({super.key});

  @override
  Widget build(BuildContext context) {
    return getAppication();
  }
}

Widget getAppication() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/drum.png'), fit: BoxFit.fitWidth),
        ),
        position: DecorationPosition.background,
        child: getBody(),
      )),
    ),
  );
}

Widget getBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('audio/h1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('audio/h2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('audio/c1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('audio/c2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('audio/k1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('audio/k2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

playSound(String sound) {
  var player = AudioPlayer();
  player.play(AssetSource(sound));
}
