import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 23 - Shopping')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Column(
              children: [
                Image.network('https://picsum.photos/400/200'),
                ListTile(
                  title: Text('Smart Watch', style: TextStyle(fontSize: 24)),
                  subtitle: Text('Track your health and fitness.'),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$199.99', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ElevatedButton(onPressed: () {}, child: Text('Buy Now')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
