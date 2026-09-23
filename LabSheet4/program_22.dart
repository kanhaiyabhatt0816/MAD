import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program22()));

class Program22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 22 - Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen())),
          child: Text('Login'),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: Drawer(child: ListTile(title: Text('Profile'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen())))),
      body: Center(child: Text('Welcome Home')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Profile')), body: Center(child: Text('User Profile')));
  }
}
