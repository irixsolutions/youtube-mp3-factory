import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Screens/about_us/about.dart';

// ignore: camel_case_types
class splash extends StatelessWidget {
  const splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: applogo,
      nextScreen: const about_us(),
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: MediaQuery.of(context).size.width / 2.5,
      
    );
  }
}