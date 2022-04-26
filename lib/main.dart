import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  color: Colors.amber,
                  onPressed: ()
                {
                  playSound(1);
                },
                ),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.deepOrange,
                    onPressed: ()
                {
                  playSound(2);
                   },
                 ),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.lightGreen,
                    onPressed: ()
                {
                  playSound(3);
                },
                ),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.cyanAccent,
                    onPressed: ()
                {
                  playSound(4);
                },
                ),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.limeAccent,
                    onPressed: ()
                {
                  playSound(5);
                },
                ),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.pink,
                    onPressed: ()
                {
                  playSound(6);
                },
                ),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.yellowAccent,
                    onPressed: ()
                {
                  playSound(7);
                },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
