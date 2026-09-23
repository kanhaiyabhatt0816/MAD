import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 15 - College')),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(title: Text('Courses')),
              ListTile(title: Text('Admissions')),
              ListTile(title: Text('Contact Us')),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Text('ABC University', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Image.network('https://picsum.photos/300/150'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Welcome to our university, leading in innovation and excellence.'),
            ),
          ],
        ),
      ),
    );
  }
}
