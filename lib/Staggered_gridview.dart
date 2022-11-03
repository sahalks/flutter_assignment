import 'package:flutter/material.dart';

class StaggeredGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class BackgroundTile extends StatelessWidget {
  final Color? backgroundColor;
  final IconData iconData;

  BackgroundTile({this.backgroundColor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
