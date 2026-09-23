import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title: Text('Program 12')),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
              Text(
                'John Doe',
                style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey.shade100, letterSpacing: 2.5),
              ),
              SizedBox(height: 20, width: 150, child: Divider(color: Colors.white)),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.blueGrey),
                  title: Text('+1 234 567 890'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blueGrey),
                  title: Text('john@email.com'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
