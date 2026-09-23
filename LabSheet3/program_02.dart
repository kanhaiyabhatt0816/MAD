import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program02()));

class Program02 extends StatefulWidget {
  @override
  _Program02State createState() => _Program02State();
}

class _Program02State extends State<Program02> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _sum = '';

  void _calculateSum() {
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;
    setState(() {
      _sum = (num1 + num2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 02: Sum of Two Numbers')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _num1Controller,
              decoration: InputDecoration(labelText: 'Enter First Number'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _num2Controller,
              decoration: InputDecoration(labelText: 'Enter Second Number'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _calculateSum, child: Text('Calculate Sum')),
            SizedBox(height: 20),
            Text('Sum: $_sum', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
