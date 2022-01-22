
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:youtube_mp3_factory/Providers/home_b_navigation.dart';
import 'package:youtube_mp3_factory/Providers/text_input.dart';
import 'drawer_tile_change.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<DrawerTileChange>(
    create: (context) => DrawerTileChange(),
  ),
  ChangeNotifierProvider<HomeBNavigation>(
    create: (context) => HomeBNavigation(),
  ),
  ChangeNotifierProvider<TextInput>(
    create: (context) => TextInput(),
  ),
];
