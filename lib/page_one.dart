import 'package:flutter/material.dart';
import 'package:my_app/my_drawer.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("Page 1")),
      body: Center(
        child: Column(
          children: [
            Text("Page One"),
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => PageTwo()),
                // );
                // USED WITH ROUTES in main.dart
                Navigator.pushNamed(context, "/second");
              },
              child: Text("Go to Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
