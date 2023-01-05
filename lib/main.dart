import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded soundButtons(Color color, int value, String string) => Expanded(
        child: Container(
          color: color,
          child: TextButton(
            onPressed: () {
              playSound(value);
              if (kDebugMode) {
                print('$string button was clicked');
              }
            },
            child: Container(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Xylophone App',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              soundButtons(Colors.red, 1, 'red'),
              soundButtons(Colors.orange, 2, 'orange'),
              soundButtons(Colors.yellow, 3, 'yellow'),
              soundButtons(Colors.green, 4, 'green'),
              soundButtons(Colors.teal, 5, 'teak'),
              soundButtons(Colors.blue, 6, 'blue'),
              soundButtons(Colors.purple, 7, 'purple'),
            ],
          ),
        ),
      ),
    );
  }
}
