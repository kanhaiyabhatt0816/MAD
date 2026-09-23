import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program15()));

class Program15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 15 - Student App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Student Profile')),
            ElevatedButton(onPressed: () {}, child: Text('Attendance')),
            ElevatedButton(onPressed: () {}, child: Text('Result')),
          ],
        ),
      ),
    );
  }
}
