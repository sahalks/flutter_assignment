import 'package:flutter/material.dart';

class StackBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Stack"),
      ),
      body: Stack(
        children: [
          Container(width: 500, height: 500, color: Colors.green),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: SizedBox(
              width: 195,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://images.unsplash.com/photo-1667159590059-ef149c08a5fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80'),
              ),
            ),
          ),
          Positioned(top: 10,
            right: 10,child: Container(width:100,height: 20,color: Colors.black45,child: const Text("This is your Car"),),),
        ],
      ),
    );
  }
}
