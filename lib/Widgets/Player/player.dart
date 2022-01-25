import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';

class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: ScreenSize.height * 0.68,
        width: ScreenSize.width * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mp3Title(),
            const ThumbImg(),
            const Mp3Controllers(),
          ],
        ),
      ),
    );
  }
}

Widget mp3Title() {
  return const Expanded(
    child: Center(
      child: CustomText(
        textAlign: TextAlign.center,
        color: kblack,
        text: "CKay - Love Nwantiti (ft. ElGrandeToto) [North African Remix]",
        fontWeight: FontWeight.bold,
        textScaleFactor: 1.5,
        maxLines: 100,
      ),
    ),
  );
}

class ThumbImg extends StatelessWidget {
  const ThumbImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Image.asset(
        thumbHorizontal,
        fit: BoxFit.cover,
      ),
    );
  }
}

class Mp3Controllers extends StatelessWidget {
  const Mp3Controllers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: ScreenSize.width * 0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.backward)),
            IconButton(
                onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.play)),
            IconButton(
                onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.forward)),
          ],
        ),
      ),
    );
  }
}
