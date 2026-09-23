import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 17 - Info Card')),
        body: Center(
          child: Card(
            elevation: 8,
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Name: John Doe', style: TextStyle(fontSize: 20)),
                  Text('Roll No: 12345'),
                  Text('Course: B.Sc IT'),
                  Text('Semester: 4'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
