import 'package:flutter/material.dart';

void main() {
  runApp(const MyStore());
}

class Product {
  final String image;
  final String title;

  Product({required this.image, required this.title});
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Insta Store",
      home: Scaffold(
          backgroundColor: Colors.green[100],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text("Insta Store"),
          ),
          body: const MySwipeList()),
    );
  }
}

class MySwipeList extends StatefulWidget {
  const MySwipeList({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyListView();
  }
}

class MyListView extends State<MySwipeList> {
  List<Product> products = [
    Product(image: 'images/heels.jpg', title: 'Heels'),
    Product(
      image: 'images/heels1.jpg',
      title: 'Heels 1',
    ),
    Product(
      image: 'images/heels2.jpg',
      title: 'Heels 2',
    ),
    Product(
      image: 'images/heels3.jpg',
      title: 'Heels',
    ),
    Product(
      image: 'images/heels4.jpg',
      title: 'Heels 4',
    ),
    Product(
      image: 'images/heels5.jpg',
      title: 'Heels 5',
    ),
    Product(
      image: 'images/heels6.jpg',
      title: 'Heels 6',
    ),
    Product(
      image: 'images/heels7.jpg',
      title: 'Heels 7',
    ),
    Product(
      image: 'images/heels8.jpg',
      title: 'Heels 8',
    ),
    Product(
      image: 'images/heels9.jpg',
      title: 'Heels 9',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(products[index].title),
          background: Container(
            alignment: AlignmentDirectional.centerEnd,
            color: Colors.red,
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (direction) {
            setState(() {
              products.removeAt(index);
            });
          },
          direction: DismissDirection.endToStart,
          child: Card(
              elevation: 5.0,
              color: Colors.cyan[100],
              child: SizedBox(
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(products[index].image),
                        )),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Container(
                        child: Text(
                          products[index].title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ))),
        );
      },
    );
  }
}
