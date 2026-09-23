import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 09')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Vertical 1', style: TextStyle(fontSize: 20)),
            Text('Vertical 2', style: TextStyle(fontSize: 20)),
            Text('Vertical 3', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
