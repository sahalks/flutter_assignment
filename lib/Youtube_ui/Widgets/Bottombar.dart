import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    return BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        currentIndex: currentIndex,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        items: [
          const BottomNavigationBarItem(activeIcon: Icon(Icons.home), icon: Icon(Icons.home_outlined),label: 'Home'),
          const BottomNavigationBarItem(activeIcon: Icon(Icons.video_collection), icon: Icon(Icons.video_collection_outlined),label: 'Shorts'),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle_outline,size: 40,)),label: ''),
          const BottomNavigationBarItem(activeIcon: Icon(Icons.subscriptions), icon: Icon(Icons.subscriptions_outlined),label: 'Subscription'),
          const BottomNavigationBarItem(activeIcon: Icon(Icons.video_library), icon: Icon(Icons.video_library_outlined),label: 'Library'),
        ],
      );
  }
}
