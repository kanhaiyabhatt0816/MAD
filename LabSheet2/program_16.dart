import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 16 - Products')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(4, (index) {
            return Card(
              child: Column(
                children: [
                  Image.network('https://picsum.photos/100', height: 80),
                  Text('Product ${index + 1}'),
                  Text('\$${(index + 1) * 10}'),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
