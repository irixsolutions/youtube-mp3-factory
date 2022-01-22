import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Database/database.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Widgets/Explore%20Widgets/overlay_tile.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: Database.videoList.length,
      itemBuilder: (BuildContext context, int index) {
        return TrendingListTile(
          title: Database.videoList[index].title,
        );
      },
    );
  }
}

class TrendingListTile extends StatelessWidget {
  final String title;
  const TrendingListTile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
        height: ScreenSize.height * 0.25,
        width: ScreenSize.width,
        child: Stack(
          children: [
            SizedBox(
              child: Image.asset(thumbHorizontal, fit: BoxFit.fill),
              width: ScreenSize.width,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                color: kblack.withOpacity(0.5),
                //height: ScreenSize.height * 0.08,
                child: overLayTitle(title: title),
              ),
            )
          ],
        ),
      ),
    );
  }
}
