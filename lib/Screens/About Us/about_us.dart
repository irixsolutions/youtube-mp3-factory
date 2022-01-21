
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Widgets/About%20us/back_details.dart';
import 'package:youtube_mp3_factory/Widgets/About%20us/bg_design.dart';
import 'package:youtube_mp3_factory/Widgets/About%20us/rounded_logo.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';




class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return iniwidget();
  }
}

Widget iniwidget() {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const CustomText(color: kWhite, text: "About us"),
      backgroundColor: primaryColor,
      elevation: 0,
    ),
      body: Stack(
    children: [
      const BackDetails(),
      bgdesign(),
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







