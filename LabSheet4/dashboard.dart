import 'package:flutter/material.dart';
import 'program_01.dart';
import 'program_02.dart';
import 'program_03.dart';
import 'program_04.dart';
import 'program_05.dart';
import 'program_06.dart';
import 'program_07.dart';
import 'program_08.dart';
import 'program_09.dart';
import 'program_10.dart';
import 'program_11.dart';
import 'program_12.dart';
import 'program_13.dart';
import 'program_14.dart';
import 'program_15.dart';
import 'program_16.dart';
import 'program_17.dart';
import 'program_18.dart';
import 'program_19.dart';
import 'program_20.dart';
import 'program_21.dart';
import 'program_22.dart';
import 'program_23.dart';
import 'program_24.dart';
import 'program_25.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Dashboard(),
  ));
}

class Dashboard extends StatelessWidget {
  final List<Map<String, dynamic>> programs = [
    {'title': 'Program 01: Two Screens Navigation', 'widget': Program01()},
    {'title': 'Program 02: Home & About Navigation', 'widget': Program02()},
    {'title': 'Program 03: Home, Profile, Settings', 'widget': Program03()},
    {'title': 'Program 04: Login to Home', 'widget': Program04()},
    {'title': 'Program 05: Open Profile Screen', 'widget': Program05()},
    {'title': 'Program 06: Navigator.push()', 'widget': Program06()},
    {'title': 'Program 07: Navigator.pop()', 'widget': Program07()},
    {'title': 'Program 08: Forward & Backward Nav', 'widget': Program08()},
    {'title': 'Program 09: BottomNavBar (3 Screens)', 'widget': Program09()},
    {'title': 'Program 10: Switch Screens BottomNavBar', 'widget': Program10()},
    {'title': 'Program 11: Simple Drawer', 'widget': Program11()},
    {'title': 'Program 12: Drawer Navigation', 'widget': Program12()},
    {'title': 'Program 13: AppBar & Drawer with Icons', 'widget': Program13()},
    {'title': 'Program 14: BottomNavBar (Home, Courses, Contact)', 'widget': Program14()},
    {'title': 'Program 15: Home to Multiple Screens', 'widget': Program15()},
    {'title': 'Program 16: Pass Name to Screen', 'widget': Program16()},
    {'title': 'Program 17: Pass Name & Course', 'widget': Program17()},
    {'title': 'Program 18: Form to Screen', 'widget': Program18()},
    {'title': 'Program 19: Pass Numbers (Sum)', 'widget': Program19()},
    {'title': 'Program 20: Product Detail (Name & Price)', 'widget': Program20()},
    {'title': 'Program 21: Student List to Detail', 'widget': Program21()},
    {'title': 'Program 22: Login, Home, Profile Nav', 'widget': Program22()},
    {'title': 'Program 23: College App Navigation', 'widget': Program23()},
    {'title': 'Program 24: Shopping App Nav', 'widget': Program24()},
    {'title': 'Program 25: Student Management App', 'widget': Program25()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LabSheet 4 Dashboard'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: programs.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Text(
                (index + 1).toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text(
              programs[index]['title'],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => programs[index]['widget'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
