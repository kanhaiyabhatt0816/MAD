import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program19()));

class Program19 extends StatelessWidget {
  final TextEditingController _c1 = TextEditingController();
  final TextEditingController _c2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 19 - Sum')),
      body: Column(
        children: [
          TextField(controller: _c1, keyboardType: TextInputType.number),
          TextField(controller: _c2, keyboardType: TextInputType.number),
          ElevatedButton(
            onPressed: () {
              int sum = int.parse(_c1.text) + int.parse(_c2.text);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(sum: sum)));
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int sum;
  ResultScreen({required this.sum});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Sum')), body: Center(child: Text('Result: $sum')));
  }
}
