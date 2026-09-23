import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program14()));

class Program14 extends StatefulWidget {
  @override
  _Program14State createState() => _Program14State();
}

class _Program14State extends State<Program14> {
  int _index = 0;
  final _tabs = [Center(child: Text('Home')), Center(child: Text('Courses')), Center(child: Text('Contact'))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 14 - BottomNavBar')),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Contact'),
        ],
      ),
    );
  }
}
