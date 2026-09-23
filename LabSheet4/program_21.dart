import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program21()));

class Student {
  final String name;
  final String email;
  Student(this.name, this.email);
}

class Program21 extends StatelessWidget {
  final students = [Student('Alice', 'alice@e.com'), Student('Bob', 'bob@e.com')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 21 - Student List')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(students[index].name),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(student: students[index]))),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Student student;
  DetailScreen({required this.student});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(student.name)), body: Center(child: Text('Email: ${student.email}')));
  }
}
