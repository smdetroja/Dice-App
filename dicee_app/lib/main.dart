import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int upLeftDiceNumber = 1;
  int upRightDiceNumber = 2;
  int downLeftDiceNumber = 3;
  int downRightDiceNumber = 4;
  // void diceNumberSet(){
  //   leftDiceNumber = Random().nextInt(6) + 1;
  //   rightDiceNumber = Random().nextInt(6) + 1;
  //     }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(

              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          upLeftDiceNumber = Random().nextInt(6) + 1;
                        });
                        print('upLest button is clicked');
                      },
                      child: Image.asset('images/dice$upLeftDiceNumber.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          upRightDiceNumber = Random().nextInt(6) + 1;
                        });
                        print('upRight button is clicked');
                      },
                      child: Image.asset('images/dice$upRightDiceNumber.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            downLeftDiceNumber = Random().nextInt(6) + 1;
                          });
                          print('downLeft button is clicked');
                        },
                        child: Image.asset('images/dice$downLeftDiceNumber.png')),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            downRightDiceNumber = Random().nextInt(6) + 1;
                          });
                          print('downRight button is clicked');
                        },
                        child:
                            Image.asset('images/dice$downRightDiceNumber.png')),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
