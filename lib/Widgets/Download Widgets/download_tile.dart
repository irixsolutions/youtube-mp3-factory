import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';

class DownloadTile extends StatelessWidget {
  final void Function()? onTap;
  final String logo;
  final String quality;
  final String title;
  final String downloadBehavior;
  const DownloadTile(
      {Key? key,
      this.onTap,
      this.logo = applogo,
      required this.quality,
      required this.title,
      required this.downloadBehavior})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 100,
          width: ScreenSize.width * 0.9,
          child: Row(
            children: [
              leadingImage(logo: logo),
              const SizedBox(width: 15),
              detailTile(
                quality: quality,
                title: title,
                downloadBehavior: downloadBehavior,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget leadingImage({required String logo}) {
  return Flexible(
    child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          logo,
        )),
  );
}

Widget detailTile(
    {required String quality,
    required String title,
    required String downloadBehavior}) {
  return Flexible(
    child: Column(
      children: [
        itemTitle(title: title),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              downloadState(downloadBehavior: downloadBehavior),
              qualityAndType(quality: quality),
            ],
          ),
        ),
      ],
    ),
    flex: 2,
  );
}

Widget itemTitle({required String title}) {
  return Text(
    title,
  );
}

Widget downloadState({required String downloadBehavior}) {
  return Flexible(
    child: Row(
      children: [
        Text(
          downloadBehavior,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    ),
    flex: 2,
  );
}

Widget qualityAndType({required String quality}) {
  return Flexible(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Mp3",
          style: TextStyle(fontSize: 9),
        ),
        Text(
          quality,
          style: const TextStyle(fontSize: 9),
        ),
      ],
    ),
  );
}
