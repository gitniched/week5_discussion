import 'package:flutter/material.dart';
import 'package:my_app/my_drawer.dart';
import 'package:my_app/page_one.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageOneState();
}

class _PageOneState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("Page 2")),
      body: Center(
        child: Column(
          children: [
            Text("Page Two"),
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text("Go to Page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
