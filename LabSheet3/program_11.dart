import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program11()));

class Program11 extends StatefulWidget {
  @override
  _Program11State createState() => _Program11State();
}

class _Program11State extends State<Program11> {
  final TextEditingController _cController = TextEditingController();
  String _result = '';

  void _convert() {
    double celsius = double.tryParse(_cController.text) ?? 0;
    double fahrenheit = (celsius * 9/5) + 32;
    setState(() {
      _result = '$celsius°C = ${fahrenheit.toStringAsFixed(2)}°F';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 11: C to F Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _cController, decoration: InputDecoration(labelText: 'Celsius'), keyboardType: TextInputType.number),
            ElevatedButton(onPressed: _convert, child: Text('Convert')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
