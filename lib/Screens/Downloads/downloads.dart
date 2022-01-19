import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Widgets/Download%20Widgets/download_tile.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          //intrrupted downloads
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: const CustomText(
                color: primaryColor,
                text: "Go to Intrrupted Downloads >>",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //all downloads
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return const DownloadTile(
                quality: "330KBPS",
                title:
                    "CKay - Love Nwantiti Remix ft. Joeboy & Kuami Eugene [Ah Ah Ah] (Official Video)",
                downloadBehavior: "Download Completed",
              );
            },
          )
        ],
      ),
    );
  }
}
