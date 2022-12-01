import 'package:flutter/material.dart';

import 'Screens/Home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const CustomScrollViewHome(),
  ));
}