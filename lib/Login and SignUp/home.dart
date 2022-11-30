import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),
      ),
      body: Center(child: Text("You are Logged in!! \n      Thank You  ",
        style: GoogleFonts.sahitya(textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
      ),
    );
  }
}