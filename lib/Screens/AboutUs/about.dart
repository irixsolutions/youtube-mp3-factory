import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';



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
      child: bgdesign(),
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
    ],) 
  );
}

Widget bgdesign(){
  return Container(
          height: 280,
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
          child: Image.asset(applogo),
          borderColor: primaryColor,
          borderWidth: 2,
          elevation: 50,
          radius: 75,);

}

Widget backdetails(){
  return Container(
                height: 650,
                width: 400,
                //alignment: Alignment.topLeft,
                transformAlignment: Alignment.topLeft,
                decoration: const BoxDecoration(                
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(150)),
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