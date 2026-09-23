import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program20()));

class Program20 extends StatefulWidget {
  @override
  _Program20State createState() => _Program20State();
}

class _Program20State extends State<Program20> {
  bool _check = false;
  String? _radio;
  String _drop = 'A';
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 20: Combined Widgets')),
      body: ListView( // same code
        padding: EdgeInsets.all(16), // same code
        children: [ // same code
          CheckboxListTile(title: Text('Checkbox'), value: _check, onChanged: (v) => setState(() => _check = v!)),
          RadioListTile(title: Text('Option 1'), value: '1', groupValue: _radio, onChanged: (v) => setState(() => _radio = v as String)),
          DropdownButton<String>(value: _drop, items: ['A', 'B'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(), onChanged: (v) => setState(() => _drop = v!)),
          SwitchListTile(title: Text('Switch'), value: _switch, onChanged: (v) => setState(() => _switch = v)),
          Text('State: C=$_check, R=$_radio, D=$_drop, S=$_switch'),
        ],
      ), // same code
    ); // same code
  }
}
