import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget{
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
            PopupMenuButton(
                itemBuilder: (context){
                  return[
                    const PopupMenuItem(child: Text("Settings")),
                    const PopupMenuItem(child: Text("Archive")),
                    const PopupMenuItem(child: Text("About")),
                    const PopupMenuItem(child: Text("Help")),
                  ];
                })
          ],
          backgroundColor: Colors.teal,
          bottom: const TabBar(tabs: [
            Tab(
              iconMargin: EdgeInsets.all(100),
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ])
        ),
      ),
    );
  }
  
}