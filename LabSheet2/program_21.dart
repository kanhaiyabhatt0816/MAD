import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 21 - Calculator')),
        body: Column(
          children: [
            Expanded(child: Container(alignment: Alignment.bottomRight, padding: EdgeInsets.all(24), child: Text('0', style: TextStyle(fontSize: 48)))),
            Row(
              children: ['7', '8', '9', '/'].map((e) => Expanded(child: OutlinedButton(onPressed: () {}, child: Text(e)))).toList(),
            ),
            Row(
              children: ['4', '5', '6', '*'].map((e) => Expanded(child: OutlinedButton(onPressed: () {}, child: Text(e)))).toList(),
            ),
            Row(
              children: ['1', '2', '3', '-'].map((e) => Expanded(child: OutlinedButton(onPressed: () {}, child: Text(e)))).toList(),
            ),
            Row(
              children: ['C', '0', '=', '+'].map((e) => Expanded(child: OutlinedButton(onPressed: () {}, child: Text(e)))).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
