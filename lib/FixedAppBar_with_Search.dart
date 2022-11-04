import 'package:flutter/material.dart';

class FixedwithSeach extends StatefulWidget {
  const FixedwithSeach({Key? key}) : super(key: key);

  @override
  State<FixedwithSeach> createState() => _FixedwithSeachState();
}

class _FixedwithSeachState extends State<FixedwithSeach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar(
          stretch: true,
          floating: true,
          pinned: false,
          title: Text("Scrolable AppBar"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_rounded))
          ],
          bottom:AppBar(
            title: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          )
        ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                color: Colors.redAccent,
                child: Center(child: Text("Hello")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                color: Colors.blueAccent,
                child: Center(child: Text("Hello")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                color: Colors.blueAccent,
                child: Center(child: Text("Hello")),
              ),
            ),
          ]))
        ]
      ),
    );
  }
}
