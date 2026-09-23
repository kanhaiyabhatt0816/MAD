import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program22()));

class Program22 extends StatefulWidget {
  @override
  _Program22State createState() => _Program22State();
}

class _Program22State extends State<Program22> {
  String? _gender;
  String? _course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 22: Registration')),
      body: SingleChildScrollView( // same code
        padding: EdgeInsets.all(16), // same code
        child: Column( // same code
          children: [ // same code
            TextField(decoration: InputDecoration(labelText: 'Name')),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            Text('Gender:'),
            RadioListTile(title: Text('Male'), value: 'M', groupValue: _gender, onChanged: (v) => setState(() => _gender = v as String)),
            RadioListTile(title: Text('Female'), value: 'F', groupValue: _gender, onChanged: (v) => setState(() => _gender = v as String)),
            DropdownButton<String>(hint: Text('Select Course'), value: _course, items: ['BCA', 'MCA'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(), onChanged: (v) => setState(() => _course = v)),
            ElevatedButton(onPressed: () {}, child: Text('Register')),
          ],
        ), // same code
      ), // same code
    ); // same code
  }
}
