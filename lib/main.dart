import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          title: Text('Card Shuffleing App'),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: CardPage(),
          ),
        ),
      ),
    )
  );
}

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  int leftCardNumber = 0;
  int rightCardNumber =0;

  void changeCardFace(){
    setState(() {
      leftCardNumber = Random().nextInt(13) + 1;
      rightCardNumber = Random().nextInt(13) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(

          flex: 5,
          child: FlatButton(
              onPressed: (){
                changeCardFace();
              },
              child: Image.asset(
                  'images/card$leftCardNumber.png',
                  height: 100,
                  width: 100,

              )
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){
                setState(() {

                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
