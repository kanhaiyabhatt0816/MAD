import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 11')),
        body: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
                SizedBox(height: 10),
                Text('John Doe', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text('Student', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, size: 20),
                    SizedBox(width: 5),
                    Text('john.doe@example.com'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
