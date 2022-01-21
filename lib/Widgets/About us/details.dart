import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Widgets/About%20us/social_media_launch.dart';

SocialMediaLaunches _links = SocialMediaLaunches();
Widget author() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
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
          'Author :- IRIX Solutions',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
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
      child: InkWell(
        onTap: _links.launchURLweb,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 10),
          child: const Text(
            'Terms & Conditions',
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}

Widget sociallinks() {
  return SizedBox(
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          iconSize: 35,
          onPressed: _links.launchURLfb,
          icon: const FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
          ),
        ),
        IconButton(
          iconSize: 35,
          onPressed: _links.launchURLlinkedin,
          icon: const FaIcon(FontAwesomeIcons.linkedin, color: Colors.blue),
        ),
        IconButton(
          iconSize: 35,
          onPressed: _links.launchURLinster,
          icon: const FaIcon(FontAwesomeIcons.instagram,
              color: Colors.pinkAccent),
        ),
      ],
    ),
  );
}
