import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';

const String _urlfb = 'https://www.facebook.com/IRIXsolutions';
const String _urllinkdin = 'https://www.linkedin.com/company/irix-solutions/';
const String _urlinster = 'https://www.instagram.com/irix_solutions/';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return iniwidget();
  }
}

Widget iniwidget() {
  return Scaffold(
      body: Stack(
    children: [
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
    ],
  ));
}

Widget bgdesign() {
  return Container(
      height: ScreenSize.height * 0.3,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150)),
          color: primaryColor),
      transform: Matrix4.rotationZ(-0.5));
}

Widget roundLogo() {
  return CircularProfileAvatar(
    '',
    child: SizedBox(height: 250, child: Image.asset(applogo)),
    borderColor: primaryColor,
    borderWidth: 2,
    elevation: 50,
    radius: 75,
    imageFit: BoxFit.fitWidth,
  );
}

Widget backdetails() {
  return Container(
    //
    height: ScreenSize.height * 0.8,
    width: ScreenSize.width * 0.9,
    //alignment: Alignment.topLeft,
    transformAlignment: Alignment.topLeft,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: kWhite),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: Text(
                'Youtube MP3 \n Factory',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        author(),
        version(),
        term(),
        sociallinks()
      ],
    ),
  );
}

Widget author() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Container(
      width: ScreenSize.width * 0.6,
      decoration: BoxDecoration(color: primaryColor.withOpacity(0.2),border: Border.all(color: primaryColor,width: 2),
        borderRadius: const BorderRadius.only(topRight: Radius.circular(25)),
      ),
      height: 60,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10),
        child: const Text('Author :- IRIX Solutions',style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),),
      ),
    ),
  );
}

Widget version() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Container(
      width: ScreenSize.width * 0.6,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor, width: 2),
        borderRadius: const BorderRadius.only(topRight: Radius.circular(25)),
      ),
      height: 60,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10),
        child: const Text(
          'Version :- 1.0.0',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget term() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 0.5),
    child: Container(
      width: ScreenSize.width * 0.6,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.2),
        border: Border.all(color: primaryColor, width: 2),
        borderRadius: const BorderRadius.only(topRight: Radius.circular(25)),
      ),
      height: 60,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 10),
        child: const Text(
          'Terms & Conditions',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}



Widget sociallinks() {
  return SizedBox(
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        IconButton(
          onPressed: _launchURLfb,
          icon: FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
          ),
        ),
        IconButton(
          onPressed: _launchURLlinkedin,
          icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.blue),
        ),
        IconButton(
          onPressed: _launchURLinster,
          icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.pinkAccent),
        ),
      ],
    ),
  );
}

void _launchURLfb() async {
  if (!await launch(_urlfb)) throw 'Could not launch $_urlfb';
}

void _launchURLlinkedin() async {
  if (!await launch(_urllinkdin)) throw 'Could not launch $_urllinkdin';
}

void _launchURLinster() async {
  if (!await launch(_urlinster)) throw 'Could not launch $_urlinster';
}
