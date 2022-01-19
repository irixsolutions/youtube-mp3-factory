import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Widgets/Explore%20Widgets/overlay_tile.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SizedBox(
            height: ScreenSize.height * 0.25,
            width: ScreenSize.width,
            child: Stack(
              children: [
                SizedBox(
                  child: Image.asset(thumbHorizontal, fit: BoxFit.cover),
                  width: ScreenSize.width,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: kblack.withOpacity(0.5),
                    height: ScreenSize.height * 0.08,
                    child: overLayTitle(),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
