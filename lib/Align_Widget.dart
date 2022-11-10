import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Align Widget"),
      ),
      body: Center(
        child: Container(
          color: Colors.black45,width: 200,height: 200,
          child: Align(
            alignment: Alignment.center,
            child: Image.network('https://images.unsplash.com/photo-1661699627895-407d542b78d1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          ),
        ),
      ),
    );
  }
}
