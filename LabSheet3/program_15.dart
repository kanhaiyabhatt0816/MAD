  import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program15()));

class Program15 extends StatefulWidget {
  @override
  _Program15State createState() => _Program15State();
}

class _Program15State extends State<Program15> {
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 15: Gender Radio')),
      body: Column( // same code
        children: [ // same code
          RadioListTile<String>(
            title: Text('Male'),
            value: 'Male',
            groupValue: _gender,
            onChanged: (value) => setState(() => _gender = value),
          ),
          RadioListTile<String>(
            title: Text('Female'),
            value: 'Female',
            groupValue: _gender,
            onChanged: (value) => setState(() => _gender = value),
          ),
          RadioListTile<String>(
            title: Text('Other'),
            value: 'Other',
            groupValue: _gender,
            onChanged: (value) => setState(() => _gender = value),
          ),
          SizedBox(height: 20),
          Text('Selected Gender: ${_gender ?? 'None selected'}'),
        ],
      ), // same code
    ); // same code
  }
}
