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
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
              color: Colors.yellowAccent[100],
              alignment: Alignment.center,
            child: Text('Bread and Dairy',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.yellowAccent[200],
            alignment: Alignment.center,
            child: Text('Desserts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.red[100],
            alignment: Alignment.center,
            child: Text('Fresh Fruits',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.red[200],
            alignment: Alignment.center,
            child: Text('Snacks',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue[100],
            alignment: Alignment.center,
            child: Text('Beverages',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue[200],
            alignment: Alignment.center,
            child: Text('Desserts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.orange[100],
            alignment: Alignment.center,
            child: Text('Instant Foods',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.orange[200],
            alignment: Alignment.center,
            child: Text('Home Care',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.purple[100],
            alignment: Alignment.center,
            child: Text('Personal Care',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.purple[200],
            alignment: Alignment.center,
            child: Text('Pet Care',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                )
            ),
          ),

        ],

    );
  }
}



