import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program11()));

class Program11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 11 - Drawer')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(child: Text('Navigation Drawer'), decoration: BoxDecoration(color: Colors.blue)),
            ListTile(title: Text('Home'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Profile'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('About'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Settings'), onTap: () => Navigator.pop(context)),
          ],
        ),
      ),
      body: Center(child: Text('Home Page')),
    );
  }
}
