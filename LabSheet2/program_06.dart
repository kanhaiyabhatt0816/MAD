import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 06')),
        body: Column(
          children: [
            Text('Combined Widgets', style: TextStyle(fontSize: 24)),
            Image.network('https://picsum.photos/200/100'),
            Icon(Icons.star, size: 50, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
