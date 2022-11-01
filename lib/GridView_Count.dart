import 'package:flutter/material.dart';

class GridviewCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GridView Count"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(10, (index) {
            return Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(100),),
              child: IconButton(onPressed: (){},icon: Icon(Icons.apple),color: Colors.green,iconSize: 90,),
            );
          }),
        ),
      ),
    );
  }
}
