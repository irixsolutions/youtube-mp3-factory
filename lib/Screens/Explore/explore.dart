import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Widgets/Explore%20Widgets/explore_heading.dart';
import 'package:youtube_mp3_factory/Widgets/Explore%20Widgets/recent_list.dart';
import 'package:youtube_mp3_factory/Widgets/Explore%20Widgets/trending_list.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ExploreHeading(
            heading: "Recently Played",
          ),
          SizedBox(
            height: 20,
          ),
          RecentList(),
          SizedBox(
            height: 20,
          ),
          ExploreHeading(
            heading: "Trending Now",
          ),
          Trending(),
        ],
      ),
    );
  }
}






