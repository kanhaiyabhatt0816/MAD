import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program09()));

class Program09 extends StatefulWidget {
  @override
  _Program09State createState() => _Program09State();
}

class _Program09State extends State<Program09> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    Center(child: Text('Home Screen')),
    Center(child: Text('Profile Screen')),
    Center(child: Text('Settings Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 09 - BottomNavBar')),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
