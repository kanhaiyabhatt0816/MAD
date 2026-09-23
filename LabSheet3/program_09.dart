import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program09()));

class Program09 extends StatefulWidget {
  @override
  _Program09State createState() => _Program09State();
}

class _Program09State extends State<Program09> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  void _checkEvenOdd() {
    int num = int.tryParse(_controller.text) ?? 0;
    setState(() {
      _result = num % 2 == 0 ? '$num is Even' : '$num is Odd';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 09: Even or Odd')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _controller, decoration: InputDecoration(labelText: 'Enter an Integer'), keyboardType: TextInputType.number),
            ElevatedButton(onPressed: _checkEvenOdd, child: Text('Check')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
