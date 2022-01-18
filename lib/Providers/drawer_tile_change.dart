import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Models/drawer_tile.dart';

class DrawerTileChange extends ChangeNotifier {
  List<DrawerTileModel> drawerTileData = [
    DrawerTileModel(icon: FontAwesomeIcons.home, title: "Home"),
    DrawerTileModel(icon: FontAwesomeIcons.teamspeak, title: "About Us"),
    DrawerTileModel(icon: FontAwesomeIcons.star, title: "FeedBack"),
    DrawerTileModel(icon: FontAwesomeIcons.shareAlt, title: "Share"),
    DrawerTileModel(icon: FontAwesomeIcons.signOutAlt, title: "Exit"),
  ];
  onTileTapped(int index) {
    for (var tile in drawerTileData) {
      if (tile.isTapped) {
        tile.isTapped = false;
        notifyListeners();
      }
    }
    var item = drawerTileData[index];
    item.isTapped = !item.isTapped;
    notifyListeners();
  }

  onLaunch() {
    drawerTileData[0].isTapped = true;
  }
}
