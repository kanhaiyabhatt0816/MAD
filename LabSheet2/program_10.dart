import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 10')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Submit')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {}, child: Text('Reset')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {}, child: Text('Cancel')),
            ],
          ),
        ),
      ),
    );
  }
}
