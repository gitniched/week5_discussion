import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List<Map<String, String>> routes = [
    {"route": "/", "page": "PageOne"},
    {"route": "/second", "page": "PageTwo"},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (ctx, i) {
          return ListTile(
            title: Text(routes[i]["page"]!),
            onTap: () {
              Navigator.pushNamed(context, routes[i]["route"]!);
            },
          );
        },
      ),
    );
  }
}
