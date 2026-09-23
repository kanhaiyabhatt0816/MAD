import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program06()));

class Program06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 06 - Navigator.push')),
      body: Center(
        child: ElevatedButton(
          child: Text('Push New Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen()));
          },
        ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Screen')),
      body: Center(child: Text('This screen was pushed.')),
    );
  }
}
