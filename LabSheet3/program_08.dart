import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program08()));

class Program08 extends StatefulWidget {
  @override
  _Program08State createState() => _Program08State();
}

class _Program08State extends State<Program08> {
  final TextEditingController _m1Controller = TextEditingController();
  final TextEditingController _m2Controller = TextEditingController();
  final TextEditingController _m3Controller = TextEditingController();
  String _result = '';

  void _calculatePercentage() {
    double m1 = double.tryParse(_m1Controller.text) ?? 0;
    double m2 = double.tryParse(_m2Controller.text) ?? 0;
    double m3 = double.tryParse(_m3Controller.text) ?? 0;
    double total = m1 + m2 + m3;
    double percentage = (total / 300) * 100;
    setState(() {
      _result = 'Total: $total\nPercentage: ${percentage.toStringAsFixed(2)}%';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 08: Percentage')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _m1Controller, decoration: InputDecoration(labelText: 'Subject 1 (out of 100)'), keyboardType: TextInputType.number),
            TextField(controller: _m2Controller, decoration: InputDecoration(labelText: 'Subject 2 (out of 100)'), keyboardType: TextInputType.number),
            TextField(controller: _m3Controller, decoration: InputDecoration(labelText: 'Subject 3 (out of 100)'), keyboardType: TextInputType.number),
            ElevatedButton(onPressed: _calculatePercentage, child: Text('Calculate Percentage')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
