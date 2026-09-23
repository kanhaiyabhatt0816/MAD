import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Program 25 - Profile')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://picsum.photos/600/200'), fit: BoxFit.cover),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -50),
                child: CircleAvatar(radius: 60, backgroundColor: Colors.white, child: CircleAvatar(radius: 55, backgroundImage: NetworkImage('https://picsum.photos/200'))),
              ),
              Text('Johnathan Doe', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Text('Mobile App Developer', style: TextStyle(fontSize: 18, color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [Text('120'), Text('Posts')]),
                    Column(children: [Text('12k'), Text('Followers')]),
                    Column(children: [Text('340'), Text('Following')]),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(leading: Icon(Icons.info), title: Text('About Me'), subtitle: Text('Passionate about Flutter and building beautiful UIs.')),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Edit Profile')),
            ],
          ),
        ),
      ),
    );
  }
}
