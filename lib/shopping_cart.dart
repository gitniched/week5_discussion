import 'package:flutter/material.dart';
import 'package:my_app/provider/cart.dart';
import 'package:provider/provider.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    var items = context.watch<Cart>().items;
    return Scaffold(
      appBar: AppBar(title: Text("My Cart")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(items[i].name),
            trailing: Icon(Icons.recycling),
            onTap: () {
              context.read<Cart>().removeItem(i);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/");
        },
      ),
    );
  }
}
