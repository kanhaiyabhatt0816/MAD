import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Program24()));

class Program24 extends StatefulWidget {
  @override
  _Program24State createState() => _Program24State();
}

class _Program24State extends State<Program24> {
  int _index = 0;
  final _pages = [Center(child: Text('Home')), Center(child: Text('Products')), Center(child: Text('Cart'))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Program 24 - Shopping App')),
      drawer: Drawer(child: ListTile(title: Text('Profile'), onTap: () {})),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }
}
