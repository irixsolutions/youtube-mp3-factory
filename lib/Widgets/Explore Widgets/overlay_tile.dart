import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';

class OverlayTile extends StatelessWidget {
  final void Function()? downloadOnTap;
  final void Function()? playOnTap;
  const OverlayTile({Key? key, this.downloadOnTap, this.playOnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        elevation: 5,
        shadowColor: kblack.withOpacity(0.5),
        color: kblack.withOpacity(0.5),
        child: SizedBox(
          width: ScreenSize.width * 0.4,
          height: ScreenSize.height * 0.12,
          child: overLayTitle(),
        ),
      ),
    );
  }
}

Widget overLayTitle() {
  return const Padding(
    padding: EdgeInsets.all(7.0),
    child: CustomText(
      color: kWhite,
      text: "CKay - Love Nwantiti Remix ft. Joeboy & Kuami Eugene [Ah Ah Ah]",
      maxLines: 100,
      textAlign: TextAlign.center,
    ),
  );
}
