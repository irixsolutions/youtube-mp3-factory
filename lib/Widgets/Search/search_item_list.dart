import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Providers/text_input.dart';
import 'package:youtube_mp3_factory/Widgets/Explore%20Widgets/trending_list.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';


class SearchList extends StatelessWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final f = Provider.of<TextInput>(context, listen: true);
    return f.foundedVideos.isNotEmpty
        ? ListView.builder(
            itemCount: f.foundedVideos.length,
            itemBuilder: (BuildContext context, int index) {
              var video = f.foundedVideos[index];
              return TrendingListTile(
                title: video.title,
              );
            },
          )
        : const Center(
            child: CustomText(color: kblack, text: "No result found"),
          );
  }
}
