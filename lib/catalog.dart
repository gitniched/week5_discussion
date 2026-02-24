import 'package:flutter/material.dart';
import 'package:my_app/item.dart';
import 'package:my_app/provider/cart.dart';
import 'package:provider/provider.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  List<Item> inventory = [
    Item("Shampoo", 100.99, 90),
    Item("Soap", 50.99, 123),
    Item("Toothpaste", 70.50, 999),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog")),
      body: ListView.builder(
        itemCount: inventory.length,
        itemBuilder: (ctx, i) {
          return ListTile(
            title: Text(inventory[i].name),
            onTap: () {
              context.read<Cart>().addItems(
                inventory[i].name,
                inventory[i].price,
                inventory[i].qty,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "/second");
        },
      ),
    );
  }
}
