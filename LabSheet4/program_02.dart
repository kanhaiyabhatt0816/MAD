import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program02()));

class Program02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 02 - Home')),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to About'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen()));
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Screen')),
      body: Center(
        child: ElevatedButton(
          child: Text('Back to Home'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
