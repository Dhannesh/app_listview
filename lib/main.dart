import 'package:flutter/material.dart';

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
          backgroundColor: Colors.amber,
          title: const Text("Insta Store"),
        ),
        body: const MyListView(),
        backgroundColor:Colors.pinkAccent,
      ),
    );
  }
}
class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),

      children: const <Widget>[
        Text('Bread and Dairy',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold
            )
        ),
        Text('Desserts',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold
            )
        ),
        Text('Home Care',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold
            )
        ),
        Text('Snacks and Beverages',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold
            )
        ),
        Text('Per Care',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold
            )
        )
      ],
    );
  }
}



