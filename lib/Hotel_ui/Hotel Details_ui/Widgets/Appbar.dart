import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 15.0, top: 20, right: 15),
      sliver: SliverAppBar(
        backgroundColor: Colors.transparent,
        leading: Wrap(
          direction: Axis.vertical,
          children: const [
            SizedBox(height: 12),
            Text(
              'Hello Micheal..',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            Text(
              'Find Your Favorite Hotel',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 3.5),
            child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1668622168008-90faecb4d3cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80'))),
            ),
          )
        ],
      ),
    );
  }
}