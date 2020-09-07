import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildKey(
      {colorExpanded: Color,
      colorExpandedEnd: Color,
      sound: int,
      text: String,
      colorLettre: Color,
      marginRight: double}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5, 1],
            colors: [colorExpanded, colorExpandedEnd],
          ),
        ),
        margin: EdgeInsets.only(left: 20.0, right: marginRight),
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: TextStyle(
                      color: colorLettre,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'images/circle.png',
                  color: Color(0xFF212121),
                  fit: BoxFit.cover,
                  height: 17.0,
                ),
              ),
            ],
          ),
          onPressed: () {
            playSound(sound);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text('Xyphone'),
          ),
          backgroundColor: Color(0xFF424242),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.error_outline,
              ),
            )
          ],
        ),
        backgroundColor: Color(0xFF424242),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10.0,
              ),
              buildKey(
                  colorExpanded: Color(0xFFd32f2f),
                  colorExpandedEnd: Color(0xFFef5350),
                  sound: 1,
                  text: 'C',
                  colorLettre: Colors.white,
                  marginRight: 20.0),
              SizedBox(
                height: 8.0,
              ),
              buildKey(
                  colorExpanded: Color(0xFFf4511e),
                  colorExpandedEnd: Color(0xFFff7043),
                  sound: 2,
                  text: 'D',
                  colorLettre: Colors.white,
                  marginRight: 30.0),
              SizedBox(
                height: 8.0,
              ),
              buildKey(
                  colorExpanded: Color(0xFFfdd835),
                  colorExpandedEnd: Color(0xFFffee58),
                  sound: 3,
                  text: 'E',
                  colorLettre: Colors.black,
                  marginRight: 40.0),
              SizedBox(
                height: 8.0,
              ),
              buildKey(
                  colorExpanded: Color(0xFF00e676),
                  colorExpandedEnd: Color(0xFF76ff03),
                  sound: 4,
                  text: 'F',
                  colorLettre: Colors.black,
                  marginRight: 50.0),
              SizedBox(
                height: 8.0,
              ),
              buildKey(
                  colorExpanded: Color(0xFF00e5ff),
                  colorExpandedEnd: Color(0xFF84ffff),
                  sound: 5,
                  text: 'G',
                  colorLettre: Colors.black,
                  marginRight: 60.0),
              SizedBox(
                height: 8.0,
              ),
              buildKey(
                  colorExpanded: Color(0xFF00b0ff),
                  colorExpandedEnd: Color(0xFF80d8ff),
                  sound: 6,
                  text: 'A',
                  colorLettre: Colors.white,
                  marginRight: 70.0),
              SizedBox(
                height: 8.0,
              ),
              buildKey(
                  colorExpanded: Color(0xFFd500f9),
                  colorExpandedEnd: Color(0xFFea80fc),
                  sound: 7,
                  text: 'B',
                  colorLettre: Colors.white,
                  marginRight: 80.0),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
