import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program05()));

class Program05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 05: SnackBar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('This is a SnackBar!')),
            );
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
