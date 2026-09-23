import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program10()));

class Program10 extends StatefulWidget {
  @override
  _Program10State createState() => _Program10State();
}

class _Program10State extends State<Program10> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  void _checkNumber() {
    double num = double.tryParse(_controller.text) ?? 0;
    setState(() {
      if (num > 0) _result = '$num is Positive';
      else if (num < 0) _result = '$num is Negative';
      else _result = 'It is Zero';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 10: Positive/Negative/Zero')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _controller, decoration: InputDecoration(labelText: 'Enter a Number'), keyboardType: TextInputType.number),
            ElevatedButton(onPressed: _checkNumber, child: Text('Check')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
