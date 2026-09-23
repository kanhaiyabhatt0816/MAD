import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 05')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, size: 50, color: Colors.blue),
              Icon(Icons.favorite, size: 50, color: Colors.red),
              Icon(Icons.settings, size: 50, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
