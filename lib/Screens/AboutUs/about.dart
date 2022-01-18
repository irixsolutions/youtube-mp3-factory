import 'dart:js';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Screens/AboutUs/about.dart';



class AboutUs extends StatelessWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return iniwidget();
  }
}


Widget iniwidget() {
  return Scaffold(
    body: Stack(children: [
      
      Container( 
        child: backdetails(),
        ),
      Container(
     // child: bgdesign(),
    ), 
     SizedBox(
       height: 220,
       width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           roundLogo(),
           
          ],
        ),
      ),
      SizedBox(
        height: 420,
        
        child: 
            textcontain(),
            
          
      ),
    ],) 
  );
}

Widget bgdesign(){
  return Container(
          height: ScreenSize.height * 0.3,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150)),
            color: primaryColor
          ),
          transform: Matrix4.rotationZ(-0.5)
          );
}

Widget roundLogo(){
return CircularProfileAvatar(
          '',
          child: SizedBox(
            height: 250,
            
          child: Image.asset(applogo)),
          borderColor: primaryColor,
          borderWidth: 2,
          elevation: 50,
          radius: 75, imageFit: BoxFit.fitWidth,);
          
}

Widget backdetails(){
  return Container(
                height: ScreenSize.height * 0.8,
                width: ScreenSize.width * 0.85,
                //alignment: Alignment.topLeft,
                transformAlignment: Alignment.topLeft,
                decoration: const BoxDecoration(                
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(80)),
                            boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                    
                  ],
                        color: kWhite
    ),
    
  ); 
}
Widget textcontain(){
  return const SizedBox(
    height: 800,
    width: 200,
    child: Text(
        'Youtube MP3 Factory',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )
    
  );
}