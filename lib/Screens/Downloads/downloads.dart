import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Widgets/Download%20Widgets/download_tile.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 9,
      itemBuilder: (BuildContext context, int index) {
        return const DownloadTile(
          quality: "330KBPS",
          title:
              "CKay - Love Nwantiti Remix ft. Joeboy & Kuami Eugene [Ah Ah Ah] (Official Video)",
          downloadBehavior: "Download Completed",
        );
      },
    );
  }
}
