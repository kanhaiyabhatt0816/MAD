import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 13 - Login')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://picsum.photos/100', height: 100),
              TextField(decoration: InputDecoration(labelText: 'Username')),
              TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
