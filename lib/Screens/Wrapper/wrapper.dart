import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    ScreenSize.setScreenSize(screenSize.height, screenSize.width);
    return const Scaffold();
  }
}
