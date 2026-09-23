import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program13()));

class Program13 extends StatefulWidget {
  @override
  _Program13State createState() => _Program13State();
}

class _Program13State extends State<Program13> {
  final TextEditingController _hController = TextEditingController();
  final TextEditingController _wController = TextEditingController();
  String _result = '';

  void _calculateBMI() {
    double heightCm = double.tryParse(_hController.text) ?? 0;
    double weight = double.tryParse(_wController.text) ?? 0;
    if (heightCm > 0) {
      double heightM = heightCm / 100;
      double bmi = weight / (heightM * heightM);
      setState(() {
        _result = 'BMI: ${bmi.toStringAsFixed(2)}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 13: BMI Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _hController, decoration: InputDecoration(labelText: 'Height in cm'), keyboardType: TextInputType.number),
            TextField(controller: _wController, decoration: InputDecoration(labelText: 'Weight in kg'), keyboardType: TextInputType.number),
            ElevatedButton(onPressed: _calculateBMI, child: Text('Calculate BMI')),
            SizedBox(height: 20),
            Text(_result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
