import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/Drawer/Settings.dart';

class HomepageDraw extends StatefulWidget {
  const HomepageDraw({Key? key}) : super(key: key);

  @override
  State<HomepageDraw> createState() => _HomepageDrawState();
}

class _HomepageDrawState extends State<HomepageDraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Navigation Drawer",
          style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Jaquline"),
              accountEmail: Text("jaqu@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1667338614163-6efc1ca91b8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1640343642569-25a14ef9b73f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                ),
              ],
            ),
            ListTile(
              // dense: true,
                title: const Text("Settings"),
                trailing: const Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settingss()));
                }),
            ListTile(
              // dense: true,
              title: const Text("Home"),
              trailing: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settingss()));
              },
            ),
            const Spacer(),
            ListTile(
              title: const Text("Exit"),
              trailing: const Icon(Icons.exit_to_app),
              onTap: () {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: const Text("Exit Application"),
                    content: const Text("Do you really want to Exit?"),
                    actions: [
                      TextButton(onPressed: () {
                        SystemNavigator.pop();
                      }, child: const Text("Exit"))
                    ],
                  );
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
