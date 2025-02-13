import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Insta Store",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: const Text("Insta Store"),
        ),
        body: const MyListView(),
        backgroundColor:Colors.lightGreenAccent,
      ),
    );
  }
}
class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/profile.jpg')
            ),
            title: Text('My Profile', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
    backgroundImage: AssetImage('images/orders.jpg')
    ),
            title: Text('Past Orders', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('images/settings.jpg')
            ),
            title: Text('Account settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('images/about.jpg')
            ),
            title: Text('About', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('images/share.jpg')
            ),
            title: Text('Share', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage('images/contact.jpg')
            ),
            title: Text('Contact Us', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ]
      ).toList()
    );
  }
}
//
// ListView(
// children: ListTile.divideTiles(
// context: context,
// tiles: [
// ListTile(
// title: Text('Horse'),
// ),
// ListTile(
// title: Text('Cow'),
// ),
// ListTile(
// title: Text('Camel'),
// ),
// ListTile(
// title: Text('Sheep'),
// ),
// ListTile(
// title: Text('Goat'),
// ),
// ]
// ).toList(),
// )






