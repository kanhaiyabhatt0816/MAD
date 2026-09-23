import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program17()));

class Program17 extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _courseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 17 - Pass Data')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Name')),
            TextField(controller: _courseController, decoration: InputDecoration(labelText: 'Course')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen
                  (name: _nameController.text, course: _courseController.text)));
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String name;
  final String course;
  DetailsScreen({required this.name, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(child: Text('Name: $name\nCourse: $course')),
    );
  }
}
