import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/Align_Widget.dart';
import 'package:flutter_assignment/Bottom_Sheet.dart';
import 'package:flutter_assignment/Card_ui/Cards%20Sample.dart';
import 'package:flutter_assignment/Carousel_Slider.dart';
import 'package:flutter_assignment/CheckBox.dart';
import 'package:flutter_assignment/Contact%20Book_ui/Contact_UI.dart';
import 'package:flutter_assignment/Drawer/Drawer.dart';
import 'package:flutter_assignment/Ecommerce_ui/Ecommerce_UI.dart';
import 'package:flutter_assignment/ExpansionTile.dart';
import 'package:flutter_assignment/FixedAppBar_with_Search.dart';
import 'package:flutter_assignment/Grid%20and%20UI/Grid_ui/Grid_UI.dart';
import 'package:flutter_assignment/Inkwell.dart';
import 'package:flutter_assignment/Listview_with_builder.dart';
import 'package:flutter_assignment/Listview_with_seperator.dart';
import 'package:flutter_assignment/Lottiee.dart';
import 'package:flutter_assignment/Profile_ui/Profile_UI.dart';
import 'Login and SignUp/home.dart';
import 'package:flutter_assignment/Stack%20with%20Profile_ui/Profile_ui%20Stack/Stack_Profile_ui.dart';
import 'package:flutter_assignment/Stack%20with%20Profile_ui/StackBasic.dart';
import 'package:flutter_assignment/Staggered%20Grid_ui/Stag_Grid_UI.dart';
import 'package:flutter_assignment/Staggered_gridview.dart';
import 'package:flutter_assignment/TabBar.dart';
import 'package:flutter_assignment/Tables.dart';
import 'package:flutter_assignment/WhatsApp_ui/Android/Tab.dart';
import 'package:flutter_assignment/assignment_1/List_with_Checkbox.dart';
import 'package:flutter_assignment/Login%20and%20SignUp/Welcome.dart';
import 'package:flutter_assignment/bottom.dart';
import 'package:flutter_assignment/Login%20and%20SignUp/home.dart';
import 'Login and SignUp/Login.dart';
import 'Grid and UI/GridView_Count.dart';
import 'Grid and UI/GridView_Extent.dart';
import 'Grid and UI/GridView_Builder.dart';
import 'Grid and UI/GridView_Custom.dart';
import 'Login and SignUp/Signup.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 500), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CardsSample()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBHtFd-npMTFmdrB2MxY64fa-TpUATcEbUjg&usqp=CAU"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/images.jpg", ),
              const Text("Welcome",
                  style: TextStyle(fontSize: 50, color: Colors.white, )),
            ],
          ),
        ),
      ),
    );
  }
}
