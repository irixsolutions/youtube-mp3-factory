import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Providers/drawer_tile_change.dart';
import 'package:youtube_mp3_factory/Screens/Splash%20Screen/splash_screen.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    ScreenSize.setScreenSize(screenSize.height, screenSize.width);
    Provider.of<DrawerTileChange>(context, listen: false).onLaunch();
    return const Splash();
  }
}
