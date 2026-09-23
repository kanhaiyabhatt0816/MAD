import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program25()));

class Program25 extends StatefulWidget {
  @override
  _Program25State createState() => _Program25State();
}

class _Program25State extends State<Program25> {
  final _nameC = TextEditingController();
  final _m1C = TextEditingController();
  final _m2C = TextEditingController();
  final _m3C = TextEditingController();
  String _res = '';

  void _calc() {
    double m1 = double.tryParse(_m1C.text) ?? 0;
    double m2 = double.tryParse(_m2C.text) ?? 0;
    double m3 = double.tryParse(_m3C.text) ?? 0;
    double total = m1 + m2 + m3;
    double per = total / 3;
    String status = per >= 40 ? 'Pass' : 'Fail';
    setState(() {
      _res = 'Name: ${_nameC.text}\nTotal: $total\nPercentage: ${per.toStringAsFixed(2)}%\nStatus: $status';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 25: Student Result')),
      body: SingleChildScrollView( // same code
        padding: EdgeInsets.all(16), // same code
        child: Column( // same code
          children: [ // same code
            TextField(controller: _nameC, decoration: InputDecoration(labelText: 'Name')),
            TextField(controller: _m1C, decoration: InputDecoration(labelText: 'M1'), keyboardType: TextInputType.number),
            TextField(controller: _m2C, decoration: InputDecoration(labelText: 'M2'), keyboardType: TextInputType.number),
            TextField(controller: _m3C, decoration: InputDecoration(labelText: 'M3'), keyboardType: TextInputType.number),
            ElevatedButton(onPressed: _calc, child: Text('Calculate')),
            Text(_res),
          ],
        ), // same code
      ), // same code
    ); // same code
  }
}
