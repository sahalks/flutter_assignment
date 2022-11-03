import 'package:flutter/material.dart';

class GridviewTest extends StatelessWidget {
  List images = [
    'https://images.unsplash.com/photo-1667202374078-1683eda6b0b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
    'https://images.unsplash.com/photo-1667202374078-1683eda6b0b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
    'https://images.unsplash.com/photo-1667202374078-1683eda6b0b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
    'https://images.unsplash.com/photo-1667202374078-1683eda6b0b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
    'https://images.unsplash.com/photo-1667202374078-1683eda6b0b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
    'https://images.unsplash.com/photo-1667202374078-1683eda6b0b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GridView Builder"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Image.network(images[index]);
          },
        ),
      ),
    );
  }
}
