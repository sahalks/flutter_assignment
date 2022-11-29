import 'package:flutter/material.dart';

class GridviewExtent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GridView Extent"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.extent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.green,borderRadius: BorderRadius.circular(10)
            ),
          ),
           Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,borderRadius: BorderRadius.circular(10)
            ),
          ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,borderRadius: BorderRadius.circular(10)
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.yellow,borderRadius: BorderRadius.circular(10)
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.brown,borderRadius: BorderRadius.circular(10)
              ),
            ),
        ]),
      ),
    );
  }
}
