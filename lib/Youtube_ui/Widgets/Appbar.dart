import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      // pinned: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset('assets/images/Youtube.png'),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              foregroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1473830394358-91588751b241?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
            )),
      ],
    );
  }
}
