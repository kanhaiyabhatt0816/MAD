import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program21()));

class Program21 extends StatefulWidget {
  @override
  _Program21State createState() => _Program21State();
}

class _Program21State extends State<Program21> {
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 21: Login Form')),
      body: Padding( // same code
        padding: EdgeInsets.all(16), // same code
        child: Column( // same code
          children: [ // same code
            TextField(controller: _userController, decoration: InputDecoration(labelText: 'Username')),
            TextField(controller: _passController, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Login')),
                ElevatedButton(onPressed: () { _userController.clear(); _passController.clear(); }, child: Text('Reset')),
              ],
            ),
          ],
        ), // same code
      ), // same code
    ); // same code
  }
}
