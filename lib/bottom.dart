// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(home: MyBottomnavbar(),));
// }
//
// class MyBottomnavbar extends StatefulWidget {
//   @override
//   State<MyBottomnavbar> createState() => _MyBottomnavbarState();
// }
//
// class _MyBottomnavbarState extends State<MyBottomnavbar> {
//   int currentIndex = 0;
//   void onItemTap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   var bodies = <Widget>[
//     const Card(color: Colors.teal,
//       child: Text("Home Page"),),
//     const Card(color: Colors.white,
//     child: Text("Search Page"),),
//     const Card(color: Colors.red,
//     child: Text("Notification Page"),),
//     const Card(color: Colors.green,
//     child: Text("Profile Page"),),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Bottom Bar"),
//       ),
//       body: const Center(
//         child: Card(
//           color: Colors.green,
//           child: Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text("HomePage"),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Colors.yellow,
//           unselectedItemColor: Colors.white,
//           backgroundColor: Colors.black,
//           // currentIndex: selectedIndex,
//           // onTap: ,
//           items: const[
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.home_outlined, color: Colors.white,),
//                 label: "Home"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.search_outlined, color: Colors.white,),
//                 label: "Search"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite_border, color: Colors.white,),
//                 label: "Notification"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.account_circle_outlined, color: Colors.white,),
//                 label: "Profile"),
//           ]),
//     );
//   }
// }