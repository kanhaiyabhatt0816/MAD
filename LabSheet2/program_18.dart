import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 18 - Padding & Margin')),
        body: Container(
          margin: EdgeInsets.all(50),
          color: Colors.blue,
          child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.red,
            child: Text('Padding and Margin Example', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
