import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Animations/page_transition_slide.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/icons.dart';

import 'package:youtube_mp3_factory/Screens/Search/search_screen.dart';
import 'package:youtube_mp3_factory/Widgets/CopyURL/copyurl.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';
import 'package:youtube_mp3_factory/main.dart';

PreferredSize customAppbar(
    {required String title, required BuildContext context}) {
  return PreferredSize(
    child: AppBar(
      iconTheme: const IconThemeData(color: kblack, size: 25),
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        icon: Image.asset(menu),
      ),
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
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return const Copyurl();
                });
          },
          icon: const FaIcon(FontAwesomeIcons.link),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context, SlideTransition1(const SearchScreen()));
          },
          icon: const FaIcon(FontAwesomeIcons.search),
        ),
        
      ],
      
    ),
    preferredSize: const Size.fromHeight(66),
  );
}
