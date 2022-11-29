import 'package:flutter/material.dart';

class Grid_UI extends StatelessWidget {
  const Grid_UI({super.key});

  @override
  Widget build(BuildContext context) {
    List data = [
      [
        'https://images.unsplash.com/photo-1485738422979-f5c462d49f74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1199&q=80',
        'USA'
      ],
      [
        'https://images.unsplash.com/photo-1443226776778-71a98b9ccbe2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        'England'
      ],
      [
        'https://images.unsplash.com/photo-1431274172761-fca41d930114?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
        'France'
      ],
      [
        'https://images.unsplash.com/photo-1506739407668-75572f6229a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
        'Singapore'
      ],
      [
        'https://images.unsplash.com/photo-1521505088417-bfc5a507f901?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        'Canada'
      ]
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid UI with Stack Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black38),
                  height: 200,
                  //width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      data[index][0],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 144),
                    child: Text(
                      data[index][1],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        //backgroundColor: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(3, 5),
                            blurRadius: 11,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
          itemCount: data.length,
        ),
      ),
    );
  }
}