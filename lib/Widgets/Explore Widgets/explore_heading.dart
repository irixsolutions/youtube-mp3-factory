import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';

class ExploreHeading extends StatelessWidget {
  final String heading;
  const ExploreHeading({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: CustomText(
        color: primaryColor,
        text: heading,
        fontWeight: FontWeight.bold,
        textScaleFactor: 1.5,
      ),
    );
  }
}
