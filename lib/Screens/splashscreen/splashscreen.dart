import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Screens/AboutUs/about.dart';

// ignore: camel_case_types
class splash extends StatelessWidget {
  const splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: applogo,
      nextScreen: const AboutUs(),
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: ScreenSize.width * 0.5,
    );
  }
}