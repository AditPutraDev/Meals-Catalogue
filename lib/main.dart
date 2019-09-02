import 'package:flutter/material.dart';
import 'package:resep_makanan/ui/breakfast.dart';
import 'package:resep_makanan/ui/dessert.dart';

void main() {
  runApp(MaterialApp(
    title: "Meals Catalogue",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.orange),
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;

  pages(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Breakfast();
      case 1:
        return Dessert();
        break;
      default:
        Breakfast();
    }
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), title: Text("Breakfast")),
          BottomNavigationBarItem(
              icon: Icon(Icons.donut_small), title: Text("Dessert"))
        ],
      ),
    );
  }
}
