import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 20 - Food Menu')),
        body: ListView(
          children: [
            ListTile(
              leading: Image.network('https://picsum.photos/50'),
              title: Text('Burger'),
              subtitle: Text('\$5.99'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Add')),
            ),
            ListTile(
              leading: Image.network('https://picsum.photos/51'),
              title: Text('Pizza'),
              subtitle: Text('\$8.99'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Add')),
            ),
          ],
        ),
      ),
    );
  }
}
