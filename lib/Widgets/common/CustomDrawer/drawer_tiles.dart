import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_mp3_factory/Providers/drawer_tile_change.dart';
import 'drawer_tile_widget.dart';

class DrawerTiles extends StatelessWidget {
  const DrawerTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tileData = Provider.of<DrawerTileChange>(context, listen: true);
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: tileData.drawerTileData.length,
      itemBuilder: (BuildContext context, int index) {
        var item = tileData.drawerTileData[index];
        return DrawerTile(
          index: index,
          item: item,
          tileData: tileData,
        );
      },
    );
  }
}