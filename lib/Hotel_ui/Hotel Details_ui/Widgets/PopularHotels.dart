import 'package:flutter/material.dart';

import '../Data/Data.dart';

class PopularHotels extends StatelessWidget {
  const PopularHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.33,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: popularHotels.length,
        padding: const EdgeInsets.only(left: 20, right: 20),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var hotel = popularHotels[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 25, right: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(2, 5),
                      blurRadius: 5,
                      spreadRadius: 1)
                ],
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 0.44,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(hotel['image']),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          hotel['name'],
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          hotel['desc'],
                          style:
                          const TextStyle(fontSize: 15, color: Colors.grey),
                          maxLines: 2,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${hotel['price']} / night',
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.green),
                            ),
                            Text.rich(TextSpan(
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.blue),
                                children: [
                                  TextSpan(text: hotel['rating'].toString()),
                                  const WidgetSpan(
                                      child: Icon(
                                        Icons.star_purple500_outlined,
                                        size: 19,
                                        color: Colors.orangeAccent,
                                      ))
                                ]))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}