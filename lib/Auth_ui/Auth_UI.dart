import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Auth_UI(),
  ));
}

class Auth_UI extends StatefulWidget {
  @override
  State<Auth_UI> createState() => _Auth_UIState();
}

class _Auth_UIState extends State<Auth_UI> {
  late bool formVisible;
  int? _formIndex;


  void initState(){
    super.initState();
    formVisible = false;
    _formIndex = 1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1634655511368-6cd7213719f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=268&q=80'),fit: BoxFit.cover)
        ),
      ),
    );
  }
}

