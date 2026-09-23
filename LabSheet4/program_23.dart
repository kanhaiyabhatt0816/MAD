import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program23()));

class Program23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 23 - College App')),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: Text('Home'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Courses'), onTap: () {}),
            ListTile(title: Text('Faculty'), onTap: () {}),
            ListTile(title: Text('Contact'), onTap: () {}),
          ],
        ),
      ),
      body: Center(child: Text('College Home Page')),
    );
  }
}
