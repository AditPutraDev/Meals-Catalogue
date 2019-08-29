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
  List<Container> listRecipes = List();

  var recipe = [
    {"name": "Daging Sapi", "image": "daging_sapi.jpg"},
    {"name": "Ikan Tauco", "image": "ikan_tauco.jpg"},
    {"name": "Kol Kukus", "image": "kol_kukus.jpg"},
    {"name": "Nasi Goreng", "image": "nasi_goreng.jpg"},
    {"name": "Orak Arik", "image": "orak_arik.jpg"},
    {"name": "Nasi Goreng Rempah", "image": "nasi_goreng_rempah.jpg"},
    {"name": "Sayur Lodeh", "image": "sayur_lodeh.jpg"},
    {"name": "Tumis Jagung", "image": "tumis_jagung.jpg"},
    {"name": "Udang Saos", "image": "udang_saos.jpg"},
    {"name": "Daging Sapi Semur", "image": "daging_sapi_semur.jpg"}
  ];

  _doList() async {
    for (var i = 0; i < recipe.length; i++) {
      final recipes = recipe[i];
      final String image = recipes["image"];
      listRecipes.add(Container(
        padding: EdgeInsets.all(8),
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset("image/$image", fit: BoxFit.cover),
              Padding(padding: EdgeInsets.all(8)),
              Text(recipes["name"], style: TextStyle(fontSize: 14))
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _doList();
    super.initState();
  }

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
        children: listRecipes,
      ),
    );
  }
}
