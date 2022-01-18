import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';
import 'package:youtube_mp3_factory/main.dart';

PreferredSize customAppbar({required String title}) {
  return PreferredSize(
    child: AppBar(
      iconTheme: const IconThemeData(color: kblack, size: 25),
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const FaIcon(FontAwesomeIcons.hamburger)),
      elevation: 0,
      centerTitle: true,
      backgroundColor: kWhite,
      title: CustomText(
        color: kblack,
        text: title,
        fontWeight: FontWeight.bold,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.link),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.search),
        ),
      ],
    ),
    preferredSize: const Size.fromHeight(66),
  );
}