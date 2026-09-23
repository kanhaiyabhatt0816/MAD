import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 24 - Dashboard')),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.blue,
              width: double.infinity,
              child: Column(
                children: [
                  CircleAvatar(radius: 40, backgroundImage: NetworkImage('https://picsum.photos/200')),
                  Text('Welcome, John!', style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Card(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.book), Text('Courses')]))),
                  Card(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.event), Text('Events')]))),
                  Card(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.grade), Text('Grades')]))),
                  Card(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.message), Text('Messages')]))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
