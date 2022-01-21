import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';

Widget bgdesign() {
  return Container(
      height: ScreenSize.height * 0.3,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150)),
          color: primaryColor),
      transform: Matrix4.rotationZ(-0.5));
}
