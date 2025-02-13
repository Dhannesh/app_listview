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
    var items = [
      "Breakfast", "Dairy", "Vegetables", "Fruits", "Snacks", "Bread", "Desserts", "Home Care", "Personal Care", "Pet Care", "Kitchen"];
    List<Widget> containers = [];

    containers.addAll(createContainers(items));
    containers.addAll(createContainers(items));
    containers.addAll(createContainers(items));

    return ListView(
      padding: const EdgeInsets.all(8),
      // scrollDirection: Axis.horizontal,

      children: containers,
    );
  }
}

List<Widget> createContainers(List<String> items) {
  Random random = Random();
  List<Widget> containers = [];
  for (var item in items) {
    containers.add(Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      color: Color.fromARGB(random.nextInt(255), random.nextInt(255), random.nextInt(255), random.nextInt(255)),
  alignment: Alignment.center,
  child:  Text(item,
  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    ));

  }
  return containers;
}




