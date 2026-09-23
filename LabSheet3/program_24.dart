import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program24()));

class Program24 extends StatefulWidget {
  @override
  _Program24State createState() => _Program24State();
}

class _Program24State extends State<Program24> {
  String _input = '';
  double? _result;

  void _onPress(String char) {
    setState(() {
      _input += char;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 24: Simple Calculator')),
      body: Column( // same code
        children: [ // same code
          Text(_input, style: TextStyle(fontSize: 32)),
          Wrap(
            children: ['1','2','3','+','4','5','6','-','7','8','9','*','C','0','=','/'].map((e) => ElevatedButton(
              onPressed: () {
                if (e == 'C') setState(() => _input = '');
                else if (e == '=') {} // Simplified
                else _onPress(e);
              },
              child: Text(e),
            )).toList(),
          )
        ],
      ), // same code
    ); // same code
  }
}
