import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 02')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: John Doe', style: TextStyle(fontSize: 18)),
              Text('Course: B.Tech Computer Science', style: TextStyle(fontSize: 18)),
              Text('Semester: 5th', style: TextStyle(fontSize: 18)),
              Text('College: ABC Institute of Technology', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
