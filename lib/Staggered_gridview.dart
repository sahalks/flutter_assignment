import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StaggeredGridview extends StatelessWidget {
  final List<StaggeredTile> _cardTile = <StaggeredTile>[
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(3, 2),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(2, 3.5),
  ];
  final List<Widget> _listTile = <Widget>[
    BackgroundTile(
      iconData: Icons.home,
      backgroundColor: Colors.black,
    ),
    BackgroundTile(
      iconData: Icons.window,
      backgroundColor: Colors.red,
    ),
    BackgroundTile(
      iconData: Icons.door_back_door,
      backgroundColor: Colors.brown,
    ),
    BackgroundTile(
      iconData: Icons.energy_savings_leaf,
      backgroundColor: Colors.green,
    ),
    BackgroundTile(
      iconData: Icons.sports_basketball,
      backgroundColor: Colors.blueGrey,
    ),
    BackgroundTile(
      iconData: Icons.water_drop,
      backgroundColor: Colors.blue,
    ),
    Card(
      color: Colors.grey,
      child: Column(
        children: [
          Stack(
            children: [
              Image.network('https://images.unsplash.com/photo-1569865867048-34cfce8d58fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=378&q=80', ),
              const Positioned(top:150, left:77,child: Icon(Icons.android, color: Colors.blue,size: 64,)),
            ],
          ),
          Text("London",style: TextStyle(fontSize: 40),)
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _cardTile,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _listTile,
      ),
    );
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
