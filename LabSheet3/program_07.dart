import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program07()));

class Program07 extends StatefulWidget {
  @override
  _Program07State createState() => _Program07State();
}

class _Program07State extends State<Program07> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _m1Controller = TextEditingController();
  final TextEditingController _m2Controller = TextEditingController();
  final TextEditingController _m3Controller = TextEditingController();
  String _result = '';

  void _calculateTotal() {
    double m1 = double.tryParse(_m1Controller.text) ?? 0;
    double m2 = double.tryParse(_m2Controller.text) ?? 0;
    double m3 = double.tryParse(_m3Controller.text) ?? 0;
    setState(() {
      _result = 'Student: ${_nameController.text}\nTotal Marks: ${m1 + m2 + m3}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 07: Total Marks')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Student Name')),
              TextField(controller: _m1Controller, decoration: InputDecoration(labelText: 'Subject 1 Marks'), keyboardType: TextInputType.number),
              TextField(controller: _m2Controller, decoration: InputDecoration(labelText: 'Subject 2 Marks'), keyboardType: TextInputType.number),
              TextField(controller: _m3Controller, decoration: InputDecoration(labelText: 'Subject 3 Marks'), keyboardType: TextInputType.number),
              ElevatedButton(onPressed: _calculateTotal, child: Text('Calculate Total')),
              SizedBox(height: 20),
              Text(_result, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
