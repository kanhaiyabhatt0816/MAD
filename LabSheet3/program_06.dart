import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program06()));

class Program06 extends StatefulWidget {
  @override
  _Program06State createState() => _Program06State();
}

class _Program06State extends State<Program06> {
  final TextEditingController _controller = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 06: Submit and Reset')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _controller, decoration: InputDecoration(labelText: 'Input')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = 'Submitted: ${_controller.text}';
                    });
                  },
                  child: Text('Submit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _controller.clear();
                      _message = 'Form Reset';
                    });
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(_message),
          ],
        ),
      ),
    );
  }
}
