import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program03()));

class Program03 extends StatefulWidget {
  @override
  _Program03State createState() => _Program03State();
}

class _Program03State extends State<Program03> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _result = '';

  void _calculate(String operation) {
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;
    setState(() {
      if (operation == '+') _result = (num1 + num2).toString();
      else if (operation == '-') _result = (num1 - num2).toString();
      else if (operation == '*') _result = (num1 * num2).toString();
      else if (operation == '/') _result = num2 != 0 ? (num1 / num2).toString() : 'Cannot divide by zero';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 03: Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _num1Controller, decoration: InputDecoration(labelText: 'Number 1'), keyboardType: TextInputType.number),
            TextField(controller: _num2Controller, decoration: InputDecoration(labelText: 'Number 2'), keyboardType: TextInputType.number),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => _calculate('+'), child: Text('+')),
                ElevatedButton(onPressed: () => _calculate('-'), child: Text('-')),
                ElevatedButton(onPressed: () => _calculate('*'), child: Text('*')),
                ElevatedButton(onPressed: () => _calculate('/'), child: Text('/')),
              ],
            ),
            SizedBox(height: 20),
            Text('Result: $_result', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
