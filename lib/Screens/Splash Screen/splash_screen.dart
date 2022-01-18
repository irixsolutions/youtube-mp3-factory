import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Screens/Home/home_screen.dart';

// ignore: camel_case_types
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: applogo,
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: ScreenSize.width * 0.5,
    );
  }
}
