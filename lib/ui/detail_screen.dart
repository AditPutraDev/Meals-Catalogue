import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String name, image, material;

  Detail({this.name, this.image, this.material});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Resep $name"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            child: Hero(
                tag: name,
                child: Material(
                  child: InkWell(
                      child: Image.asset("image/$image", fit: BoxFit.cover)),
                )),
          ),
          Title(name: name),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Bahan-bahan",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Padding(padding: EdgeInsets.only(top: 8)),
                Text("$material")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  Title({this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text(name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange)),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.orange),
              Text("98")
            ],
          )
        ],
      ),
    );
  }
}
