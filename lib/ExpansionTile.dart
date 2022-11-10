import 'package:flutter/material.dart';


class Expansiontilee extends StatefulWidget {

  @override
  State<Expansiontilee> createState() => _ExpansionTileState();
}
class _ExpansionTileState extends State<Expansiontilee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Tile"),
      ),
      body: const ExpansionTile(
          title: Text("Colors"),
        subtitle: Text("Expand to see Icons"),
        children: [
          ListTile(
            leading: Icon(Icons.android),
            title: Text("Android"),
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text("Android"),
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text("Android"),
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text("Android"),
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text("Android"),
          ),
        ]
      ),
    );
  }
}
