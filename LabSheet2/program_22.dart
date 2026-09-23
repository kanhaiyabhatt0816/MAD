import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 22 - Weather')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('New York', style: TextStyle(fontSize: 32)),
              Icon(Icons.wb_sunny, size: 100, color: Colors.orange),
              Text('25°C', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
              Text('Sunny'),
            ],
          ),
        ),
      ),
    );
  }
}
