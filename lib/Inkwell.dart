import 'package:flutter/material.dart';

class Inkwell extends StatefulWidget {
  @override
  State<Inkwell> createState() => _InkwellState();
}
String a = "";
class _InkwellState extends State<Inkwell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("INKWELL"),
        actions: const [
          Text(""),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: (){setState(() {
                a = "Inkwell Pressed" ;
              });},
              onLongPress: (){setState(() {
                a = "Inkwell Long Pressed" ;
              });},
              onDoubleTap: (){setState(() {
                a = "Inkwell Double Pressed" ;
              });},
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    width: 150,
                    height: 50,
                    color: Colors.indigoAccent,
                    child: const Center(
                      child: Text("INKWELL",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                      ),),
                  ),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(10),
            child: Text(a),
            ),
          ],
        ),
      ),
    );
  }
}
