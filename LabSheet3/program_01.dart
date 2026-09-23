import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program01()));

class Program01 extends StatefulWidget {
  @override
  _Program01State createState() => _Program01State();
}

class _Program01State extends State<Program01> {
  final TextEditingController _controller = TextEditingController();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 01: Student Name')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter Student Name'),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text('Entered Name: $_name', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
