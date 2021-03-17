import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: BallState(),
      ),
    );
  }
}

class BallState extends StatefulWidget {
  @override
  _BallStateState createState() => _BallStateState();
}

class _BallStateState extends State<BallState> {

  int randomImage = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                randomImage = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$randomImage.png'),
          ),
        ),
      ),
    );
  }
}
