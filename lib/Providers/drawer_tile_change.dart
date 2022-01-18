import 'package:flutter/cupertino.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Models/drawer_tile.dart';

class DrawerTileChange extends ChangeNotifier {
  List<DrawerTileModel> drawerTileData = [
    DrawerTileModel(icon: FontAwesomeIcons.home, title: "Home"),
    DrawerTileModel(icon: FontAwesomeIcons.teamspeak, title: "About Us"),
    DrawerTileModel(icon: FontAwesomeIcons.star, title: "Feedback"),
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

    switch (index) {
      case 0:
        debugPrint("Home");
        break;
      case 3:
        debugPrint("Share");
        share();
        break;
      default:
    }
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Mp3 Factory App 😍',
        text: 'Hello , Download this awesome mp3 factory app from here 😍👉\n',
        linkUrl: 'https://irix.solutions/',
        chooserTitle: 'Share Mp3 Factory with',);
  }

  onLaunch() {
    drawerTileData[0].isTapped = true;
  }
}
