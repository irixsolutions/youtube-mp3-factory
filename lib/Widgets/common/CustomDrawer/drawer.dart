import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';
import 'drawer_tiles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: ScreenSize.height * 0.33,
            child: const UserAccountsDrawerHeader(
              currentAccountPictureSize: Size.fromRadius(75),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(applogo),
                backgroundColor: kWhite,
              ),
              decoration: BoxDecoration(color: kWhite),
              accountName: CustomText(
                color: kblack,
                text: "Youtube Mp3 Factory",
                textScaleFactor: 1.5,
              ),
              accountEmail: CustomText(
                color: primaryColor,
                text: "#1 Easy & User Friendly App",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const DrawerTiles(),
        ],
      ),
    );
  }
}
