import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program25()));

class Program25 extends StatefulWidget {
  @override
  _Program25State createState() => _Program25State();
}

class _Program25State extends State<Program25> {
  int _index = 0;
  final _screens = [
    Center(child: Text('Home')),
    Center(child: Text('Profile')),
    Center(child: Text('Attendance')),
    Center(child: Text('Result')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 25 - Student Management')),
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Attendance'),
          BottomNavigationBarItem(icon: Icon(Icons.assessment), label: 'Result'),
        ],
      ),
    );
  }
}
