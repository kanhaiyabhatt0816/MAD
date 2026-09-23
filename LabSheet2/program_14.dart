import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 14 - Register')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(labelText: 'Full Name')),
              TextField(decoration: InputDecoration(labelText: 'Email')),
              TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text('Register')),
            ],
          ),
        ),
      ),
    );
  }
}
