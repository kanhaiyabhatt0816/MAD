import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program20()));

class Program20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 20 - Home')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Product A'),
            subtitle: Text('\$100'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(name: 'Product A', price: 100))),
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String name;
  final double price;
  DetailScreen({required this.name, required this.price});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(name)), body: Center(child: Text('Price: \$$price')));
  }
}
