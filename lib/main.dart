import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        scaffoldBackgroundColor: Colors.blue[700],
      ),
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int imageNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: TextButton(
                  onPressed: () => randomNum(),
                  child: Image.asset('images/ball$imageNum.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //creates random int for randomizing 8-ball images
  randomNum() => setState(() => imageNum = Random().nextInt(5) + 1);
}
