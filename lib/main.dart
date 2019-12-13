import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//Stateful i.e always changes
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          changeDiceFace(leftDiceNumber),
          changeDiceFace(rightDiceNumber),
        ],
      ),
    );
  }

  Expanded changeDiceFace(int diceNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(() {
            leftDiceNumber = new Random().nextInt(6) + 1;
            rightDiceNumber = new Random().nextInt(6) + 1;
            print('leftDiceNumber = $leftDiceNumber');
            print('RightDiceNumber = $rightDiceNumber');
          });
        },
        child: Image.asset(
            //+ leftDiceNumber.toString() +
            'images/dice$diceNumber.png'),
      ),
    );
  }
}
