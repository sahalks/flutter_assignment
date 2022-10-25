import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBHtFd-npMTFmdrB2MxY64fa-TpUATcEbUjg&usqp=CAU"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/images.jpg", ),
              const Text("Welcome",
                  style: TextStyle(fontSize: 50, color: Colors.white, )),
            ],
          ),
        ),
      ),
    );
  }
}
