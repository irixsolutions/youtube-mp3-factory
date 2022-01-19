import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Screens/Explore/explore.dart';

import 'overlay_tile.dart';

class RecentList extends StatelessWidget {
  const RecentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * 0.3,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 15, left: index == 0 ? 15 : 0),
            child: Stack(
              children: [
                SizedBox(
                  child: Image.asset(
                    thumb,
                    fit: BoxFit.cover,
                  ),
                  width: ScreenSize.width * 0.4,
                  height: ScreenSize.height * 0.3,
                ),
                OverlayTile(
                  downloadOnTap: () {},
                  playOnTap: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
