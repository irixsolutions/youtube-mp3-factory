import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:youtube_mp3_factory/Providers/home_b_navigation.dart';
import 'drawer_tile_change.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<DrawerTileChange>(
    create: (context) => DrawerTileChange(),
  ),
  ChangeNotifierProvider<HomeBNavigation>(
    create: (context) => HomeBNavigation(),
  ),
];
