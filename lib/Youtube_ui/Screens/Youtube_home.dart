// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_assignment/Youtube_ui/Widgets/Bottombar.dart';
import '../Widgets/Widgets.dart';
import '../Data.dart';

class YouTubehome extends StatelessWidget {
  const YouTubehome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
            const Appbar(),
             SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return VideoCard(
                        title: 'title',
                        thumbnail: 'thumbnail',
                        length: 'length',
                        name: 'name',
                        views: 'views',
                        date: 'date',
                        profile: 'profile',
                        index: index);
                  },
                  childCount: videos.length,
                ),
              ),
          ],
        ),
      bottomNavigationBar: const Bottombar(),
    );


  }
}
