import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program19()));

class Program19 extends StatefulWidget {
  @override
  _Program19State createState() => _Program19State();
}

class _Program19State extends State<Program19> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 19: Toggle Switch')),
      body: Center( // same code
        child: Column( // same code
          children: [ // same code
            Switch(value: _isOn, onChanged: (v) => setState(() => _isOn = v)),
            Text('Status: ${_isOn ? 'ON' : 'OFF'}'),
          ],
        ), // same code
      ), // same code
    ); // same code
  }
}
