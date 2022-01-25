import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Models/home_bottom_navigation.dart';
import 'package:youtube_mp3_factory/Screens/Explore/explore.dart';
import 'package:youtube_mp3_factory/Screens/Settings/settings.dart';
import 'package:youtube_mp3_factory/Widgets/Player/player.dart';

class HomeBNavigation extends ChangeNotifier {
  int currentIndex = 0;

  List<HomeBottomNavigation> items = [
    HomeBottomNavigation(icon: FontAwesomeIcons.globe, title: "Explore"),
    HomeBottomNavigation(icon: FontAwesomeIcons.play, title: "Player"),
    HomeBottomNavigation(icon: FontAwesomeIcons.cog, title: "Settings"),
  ];

  List<Widget> routes = const [
    Explore(),
    Player(),
    Settings(),
  ];

  onIndexChange(index) {
    currentIndex = index;
    notifyListeners();
  }
}
