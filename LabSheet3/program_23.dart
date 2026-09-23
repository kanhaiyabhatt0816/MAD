import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program23()));

class Program23 extends StatefulWidget {
  @override
  _Program23State createState() => _Program23State();
}

class _Program23State extends State<Program23> {
  double _rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 23: Feedback')),
      body: Padding( // same code
        padding: EdgeInsets.all(16), // same code
        child: Column( // same code
          children: [ // same code
            TextField(decoration: InputDecoration(labelText: 'Name')),
            Text('Rating: ${_rating.toInt()}'),
            Slider(value: _rating, min: 1, max: 5, divisions: 4, onChanged: (v) => setState(() => _rating = v)),
            TextField(decoration: InputDecoration(labelText: 'Feedback'), maxLines: 3),
            ElevatedButton(onPressed: () {}, child: Text('Submit')),
          ],
        ), // same code
      ), // same code
    ); // same code
  }
}
