import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program12()));

class Program12 extends StatefulWidget {
  @override
  _Program12State createState() => _Program12State();
}

class _Program12State extends State<Program12> {
  final TextEditingController _lController = TextEditingController();
  final TextEditingController _wController = TextEditingController();
  String _result = '';

  void _calculateArea() {
    double length = double.tryParse(_lController.text) ?? 0;
    double width = double.tryParse(_wController.text) ?? 0;
    setState(() {
      _result = 'Area: ${length * width}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 12: Area of Rectangle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _lController, decoration: InputDecoration(labelText: 'Length'), keyboardType: TextInputType.number),
            TextField(controller: _wController, decoration: InputDecoration(labelText: 'Width'), keyboardType: TextInputType.number),
            ElevatedButton(onPressed: _calculateArea, child: Text('Calculate Area')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
