import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';

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
