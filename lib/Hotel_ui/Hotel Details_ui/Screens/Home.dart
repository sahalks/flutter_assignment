import 'package:flutter/material.dart';

import '../Widgets/Appbar.dart';
import '../Widgets/HotelPackages.dart';
import '../Widgets/PopularHotels.dart';
import '../Widgets/SearchField.dart';
import '../Widgets/Title.dart';


class CustomScrollViewHome extends StatefulWidget {
  const CustomScrollViewHome({super.key});

  @override
  State<CustomScrollViewHome> createState() => _CustomScrollViewHomeState();
}

class _CustomScrollViewHomeState extends State<CustomScrollViewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: CustomScrollView(
        slivers: [
          const AppBarCustom(),
          SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 20,
                ),
                const SearchField(),
                const SizedBox(
                  height: 25,
                ),
                const TitleCustom(
                  title: 'Popular Hotel',
                ),
                const SizedBox(
                  height: 20,
                ),
                const PopularHotels(),
                const SizedBox(
                  height: 10,
                ),
                const TitleCustom(
                  title: 'Hotel Packages',
                  button: true,
                  buttonText: 'View All',
                ),
                const SizedBox(
                  height: 10,
                ),
                const HotelPackage()
              ]))
        ],
      ),
    );
  }
}