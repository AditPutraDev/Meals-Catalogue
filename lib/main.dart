import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Meals Catalogue",
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Container> listResep = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meals Catalogue",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: listResep,
      ),
    );
  }
}
