import 'package:flutter/material.dart';

import 'Screens/Youtube_home.dart';

void main(){
  runApp(MaterialApp(
    title: 'Youtube UI',
    debugShowCheckedModeBanner: false,
    home: const YouTubehome(),
    // theme: ThemeData(primarySwatch: Colors.red, scaffoldBackgroundColor: Colors.white),
    theme: ThemeData(
      brightness: Brightness.dark,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(selectedItemColor: Colors.white),
    ),
    // darkTheme: ThemeData(primaryColor: Colors.red, scaffoldBackgroundColor: Colors.grey[600]),
  ));
}