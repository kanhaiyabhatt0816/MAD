import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program18()));

class Program18 extends StatefulWidget {
  @override
  _Program18State createState() => _Program18State();
}

class _Program18State extends State<Program18> {
  String _dept = 'Computer Science';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 18: Dept Dropdown')),
      body: Center( // same code
        child: Column( // same code
          children: [ // same code
            DropdownButton<String>(
              value: _dept,
              items: ['Computer Science', 'Physics', 'Mathematics'].map((String value) {
                return DropdownMenuItem<String>(value: value, child: Text(value));
              }).toList(),
              onChanged: (v) => setState(() => _dept = v!),
            ),
            Text('Department: $_dept'),
          ],
        ), // same code
      ), // same code
    ); // same code
  }
}
