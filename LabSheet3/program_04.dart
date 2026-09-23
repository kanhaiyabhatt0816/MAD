import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program04()));

class Program04 extends StatefulWidget {
  @override
  _Program04State createState() => _Program04State();
}

class _Program04State extends State<Program04> {
  String _text = 'Initial Text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 04: Change Text')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_text, style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _text = 'Text Changed!';
                });
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
