import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int BallNum = 2;
  void SetBallNum() {
    BallNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(
            () {
              SetBallNum();
            },
          );
        },
        child: Image.asset('images/ball$BallNum.png'),
      ),
    );
  }
}
