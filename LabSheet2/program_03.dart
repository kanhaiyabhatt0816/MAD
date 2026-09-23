import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 03')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bold Text', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('Italic Text', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
              Text('Large Text', style: TextStyle(fontSize: 30)),
              Text('Colored Text', style: TextStyle(color: Colors.blue, fontSize: 20)),
              Text('Center Aligned Text', textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
