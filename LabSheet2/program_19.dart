import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 19 - Alignment')),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(width: 50, height: 50, color: Colors.green),
            ),
            Center(
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(width: 50, height: 50, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
