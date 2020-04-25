import 'dart:math';
import 'package:flutter/material.dart';

// Magic Ball - A decision making App
void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

// Stateless Widget
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}

// Stateful Widget
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          //print('clicked');
          changeBall();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }

  void changeBall() {
    setState(() {
      // Generate random number between 1-5
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
