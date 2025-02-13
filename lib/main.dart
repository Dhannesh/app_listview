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
    return ListView(
      children: List.generate(products.length, (index)=>
        ListItem(product: products[index])
      )
    );
  }
}


class Product{
  final String image;
  final String subtitle;
  Product({required this.image,required this.subtitle});
}

List<Product> products = [
  Product(image: 'images/heels.jpg', subtitle: 'High heels'),
  Product(image: 'images/heels1.jpg', subtitle: 'Party heels'),
  Product(image: 'images/heels2.jpg', subtitle: 'Stylish heels'),
  Product(image: 'images/heels3.jpg', subtitle: 'Red heels'),
  Product(image: 'images/heels4.jpg', subtitle: 'Black heels'),
  Product(image: 'images/heels5.jpg', subtitle: 'Trendy heels'),
  Product(image: 'images/heels6.jpg', subtitle: 'Fashionable heels'),
  Product(image: 'images/heels7.jpg', subtitle: 'White heels'),
  Product(image: 'images/heels8.jpg', subtitle: 'More trendy heels'),
  Product(image: 'images/heels9.jpg', subtitle: 'Laced heels'),
];

class ListItem extends StatelessWidget {
  final Product product;
  ListItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: getRandomColor(),
      child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image(image: AssetImage(product.image), width:125, height:125, fit: BoxFit.fill),
      const SizedBox(height: 6),
    Text(product.subtitle,
    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    )
    ],
    ),
    )
    );
  }
  Color getRandomColor(){
    Random random = Random();
    return Color.fromARGB(random.nextInt(255), random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}





