import 'package:flutter/material.dart';
import 'package:my_app/catalog.dart';
import 'package:my_app/provider/cart.dart';
import 'package:my_app/shopping_cart.dart';
import 'package:provider/provider.dart';

void main() {
  //runApp(const MyApp());

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Cart())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // MyApp should contain MaterialApp only
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: PageOne(),
      initialRoute: "/",
      routes: {
        "/": (context) => Catalog(),
        "/second": (context) => ShoppingCart(),
      },
    );
  }
}
