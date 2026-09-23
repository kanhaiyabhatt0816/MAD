import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program10()));

class Program10 extends StatefulWidget {
  @override
  _Program10State createState() => _Program10State();
}

class _Program10State extends State<Program10> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Screen 1'),
    Text('Screen 2'),
    Text('Screen 3'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 10 - 3 Screens')),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: 'One'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: 'Two'),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: 'Three'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
