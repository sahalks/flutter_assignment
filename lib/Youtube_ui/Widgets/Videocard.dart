// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Data.dart';

class VideoCard extends StatelessWidget {
  const VideoCard(
      {Key? key,
      required this.title,
      required this.thumbnail,
      required this.length,
      required this.name,
      required this.views,
      required this.date,
      required this.profile,
      required this.index})
      : super(key: key);

  final String title;
  final String thumbnail;
  final String length;
  final String name;
  final String views;
  final String date;
  final String profile;
  final int index;

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: screenheight * 0.27,
          width: screenwidth,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: NetworkImage(videos[index]['thumbnail']))),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(2)),
                child: Center(
                    child: Text(
                  videos[index]['length'],
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                )),
              ),
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(videos[index]['profile']),
          ),
          title: Text(
            videos[index]['title'],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 16),
          ),
          subtitle: Wrap(
            children: [
              Text(
                '${videos[index]['name']} • ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                '${videos[index]['views']} • ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                videos[index]['date'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
