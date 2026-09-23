import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program14()));

class Program14 extends StatefulWidget {
  @override
  _Program14State createState() => _Program14State();
}

class _Program14State extends State<Program14> {
  bool _accepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 14: Terms Checkbox')),
      body: Padding( // same code
        padding: const EdgeInsets.all(16.0), // same code
        child: Column( // same code
          children: [ // same code
            CheckboxListTile(
              title: Text('I agree to the Terms and Conditions'),
              value: _accepted,
              onChanged: (bool? value) {
                setState(() {
                  _accepted = value ?? false;
                });
              },
            ),
            SizedBox(height: 20),
            Text(_accepted ? 'Thank you for agreeing!' : 'Please agree to continue.'),
          ],
        ), // same code
      ), // same code
    ); // same code
  }
}
