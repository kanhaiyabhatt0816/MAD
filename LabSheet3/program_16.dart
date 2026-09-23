import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program16()));

class Program16 extends StatefulWidget {
  @override
  _Program16State createState() => _Program16State();
}

class _Program16State extends State<Program16> {
  String? _course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 16: Course Radio')),
      body: Column( // same code
        children: [ // same code
          RadioListTile<String>(title: Text('BCA'), value: 'BCA', groupValue: _course, onChanged: (v) => setState(() => _course = v)),
          RadioListTile<String>(title: Text('B.Sc IT'), value: 'B.Sc IT', groupValue: _course, onChanged: (v) => setState(() => _course = v)),
          RadioListTile<String>(title: Text('MCA'), value: 'MCA', groupValue: _course, onChanged: (v) => setState(() => _course = v)),
          SizedBox(height: 20),
          Text('Course Selected: ${_course ?? 'None'}'),
        ],
      ), // same code
    ); // same code
  }
}
