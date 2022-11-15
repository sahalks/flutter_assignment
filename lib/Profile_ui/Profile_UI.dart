import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile_UI extends StatelessWidget {
  const Profile_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.grey[400],
        child: ListView(
          children: [
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 35,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(fit: BoxFit.cover,image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/22/74/535/hulk-wallpaper-preview.jpg')),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70,right: 70,top: 10),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.squareFacebook,color: Colors.blue[900],size: 40,),
                  Icon(FontAwesomeIcons.squareInstagram,color: Colors.green[900],size: 40,),
                  Icon(FontAwesomeIcons.squareTwitter,color: Colors.blue[500],size: 40,),
                  Icon(FontAwesomeIcons.squareWhatsapp,color: Colors.green[900],size: 40,),
                  Icon(FontAwesomeIcons.squareWhatsapp,color: Colors.green[900],size: 40,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
