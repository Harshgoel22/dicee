import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Image.asset('images/dice1.jpg',
            height: 150.0,
              width: 150.0,
            ),
          ),
          Expanded(
            child: Image.asset('images/dice2.jpg',
            height: 150.0,
              width: 150.0,
            ),
          ),
        ],
      ),
    );
  }
}
