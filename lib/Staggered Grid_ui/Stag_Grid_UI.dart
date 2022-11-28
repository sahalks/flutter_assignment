import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Staggered_UI extends StatelessWidget {
  const Staggered_UI({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> staggeredStyle = const [
      StaggeredTile.count(1, 1.7),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2.2),
      StaggeredTile.count(1, 1.2),
    ];

    List<Tile> tiles = const [
      Tile(
          url:
          'https://images.unsplash.com/photo-1623578540859-adf2416e09b3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
          title: 'Green Field',
          subtitle: 'Scenery'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1512850183-6d7990f42385?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
          title: 'Highway',
          subtitle: 'Road View'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1500964757637-c85e8a162699?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1203&q=80',
          title: 'Mountain',
          subtitle: 'Scenery'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1619639572420-e0eac8689c29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
          title: 'Police Box',
          subtitle: 'Booth'),
      Tile(
          url:
          'https://images.unsplash.com/photo-1623387641168-d9803ddd3f35?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
          title: 'Cat and Dog',
          subtitle: 'Pets')
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Staggered Grid UI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          staggeredTiles: staggeredStyle,
          controller: ScrollController(initialScrollOffset: 2),
          children: tiles,
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  const Tile({
    Key? key,
    required this.url,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(url),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(subtitle),
                ],
              ),
            )
          ],
        ));
  }
}