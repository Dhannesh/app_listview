import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyStore());
}

class Action {
  final String image;
  final String title;
  final String subtitle;

  Action({required this.image, required this.title, required this.subtitle});

  @override
  String toString() {
    return "$title ($subtitle)";
  }
}

List<Action> actions = [
  Action(
      image: 'images/profile.jpg',
      title: 'My Profile',
      subtitle: 'Edit your profile'),
  Action(
      image: 'images/orders.jpg',
      title: 'Past Orders',
      subtitle: 'View your past orders'),
  Action(
      image: 'images/settings.jpg',
      title: 'Account settings',
      subtitle: 'Edit your account settings'),
  Action(image: 'images/about.jpg', title: 'About', subtitle: 'Learn about us'),
  Action(
      image: 'images/share.jpg',
      title: 'Share',
      subtitle: 'Like us? Share us!'),
];

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
        body: MyListView(),
        backgroundColor: Colors.lightGreenAccent,
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  MyListView({super.key});

  final randomNum = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // itemCount: 20,
      itemBuilder: (_, index) {
        debugPrint(
            "Building item $index ${Colors.primaries[randomNum.nextInt(Colors.primaries.length)]}");
        return Card(
          elevation: 5.0,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          color: Colors.primaries[randomNum.nextInt(Colors.primaries.length)]
              [randomNum.nextInt(9) + 100],
          child: Container(
            padding: const EdgeInsets.all(30),
            alignment: Alignment.center,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(actions[index % 5].image),
              ),
              title: Text("${actions[index % 5].title}: $index"),
              subtitle: Text(actions[index % 5].subtitle),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                debugPrint("Tapped on ${actions[index % 5]} item $index");
              },
            ),
          ),
        );
      },
    );
  }
}
