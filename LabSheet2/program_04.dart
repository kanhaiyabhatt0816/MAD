import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 04')),
        body: Center(
          child: Image.network(
            'https://picsum.photos/200',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
