import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Dicee',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: DicePage(),
        ),
      )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDicenumber = 1;
  int rightDicenumber = 1;

  void OnPress(){
    setState(() {
      leftDicenumber = Random.secure().nextInt(6) +1;
      rightDicenumber = Random.secure().nextInt(6) +1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                OnPress();
              },
              child: Image.asset('images/dice$leftDicenumber.jpg',
                height: 150.0,
                width: 150.0,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                OnPress();
              },
              child: Image.asset('images/dice$rightDicenumber.jpg',
                height: 150.0,
                width: 150.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}




