import 'package:flutter/material.dart';

class GridviewCustom extends StatelessWidget {
  get images => [
        'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
        'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
        'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
        'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
        'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
        'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
        'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
        'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80'
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter GridView"),
      ),
      body: GridView.custom(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Image.network(
              images[index],
              width: 50,
              height: 50,
            );
          },
          childCount: 8,
        ),
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}
