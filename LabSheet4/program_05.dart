import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program05()));

class Program05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 05 - Home')),
      body: Center(
        child: ElevatedButton(
          child: Text('Open Profile'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Screen')),
      body: Center(child: Text('User Profile Details')),
    );
  }
}
