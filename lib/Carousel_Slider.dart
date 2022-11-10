import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carouselslider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Carousel Slider"),
      ),
      body: CarouselSlider(
        items: [
          Container(
            margin:
            EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(fit: BoxFit.cover,image: NetworkImage('https://images.unsplash.com/photo-1667327859487-4bd38c929a73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'))
            ),
          ),
          Container(
            margin:
            EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(fit: BoxFit.cover,image: NetworkImage('https://images.unsplash.com/photo-1624085568108-36410cfe4d24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'))
            ),
          ),
        ], options: CarouselOptions(
        aspectRatio: 16 / 9,
        scrollPhysics: BouncingScrollPhysics(),
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.easeIn,
        autoPlayAnimationDuration: Duration(milliseconds: 500),
        viewportFraction: 0.85,
      ),
      ),
    );
  }
}
