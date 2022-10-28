import 'package:flutter/material.dart';

class Listviewwithbuilder extends StatelessWidget{
  Listviewwithbuilder({super.key});

  Widget build(BuildContext context){
    List<String> id = ['1', '2', '3', '4'];
    List<int> codes = [100, 200, 400, 800];

    return Scaffold(
      appBar: AppBar(title: Text("List View Builder")),
      body: ListView.builder(
          itemCount: id.length,
          itemBuilder: (BuildContext context, int index){
        return Container(
          height: 50,
          color: Colors.green[codes[index]],
          child: Center(child: Text(id[index]),),
        );
      }),
    );
  }
}