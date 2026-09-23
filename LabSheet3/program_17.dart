import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program17()));

class Program17 extends StatefulWidget {
  @override
  _Program17State createState() => _Program17State();
}

class _Program17State extends State<Program17> {
  String _semester = 'Sem 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 17: Semester Dropdown')),
      body: Center( // same code
        child: Column( // same code
          children: [ // same code
            DropdownButton<String>(
              value: _semester,
              items: ['Sem 1', 'Sem 2', 'Sem 3', 'Sem 4', 'Sem 5', 'Sem 6'].map((String value) {
                return DropdownMenuItem<String>(value: value, child: Text(value));
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _semester = newValue!;
                });
              },
            ),
            Text('Selected Semester: $_semester'),
          ],
        ), // same code
      ), // same code
    ); // same code
  }
}
