import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program18()));

class Program18 extends StatefulWidget {
  @override
  _Program18State createState() => _Program18State();
}

class _Program18State extends State<Program18> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 18 - Form')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              onSaved: (value) => _name = value ?? '',
            ),
            ElevatedButton(
              onPressed: () {
                _formKey.currentState?.save();
                Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayScreen(name: _name)));
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayScreen extends StatelessWidget {
  final String name;
  DisplayScreen({required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Result')), body: Center(child: Text('Submitted Name: $name')));
  }
}
