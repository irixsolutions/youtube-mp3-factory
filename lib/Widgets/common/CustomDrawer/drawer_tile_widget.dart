import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';

class DrawerTile extends StatelessWidget {
  final dynamic item;
  final dynamic tileData;
  final int index;
  const DrawerTile({Key? key, this.item, this.tileData, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        selected: item.isTapped,
        selectedTileColor: primaryColor.withOpacity(0.3),
        onTap: () {
          tileData.onTileTapped(index:index , context:context);
        },
        leading:
            FaIcon(item.icon, color: item.isTapped ? primaryColor : kblack),
        title: CustomText(
          color: item.isTapped ? primaryColor : kblack,
          text: item.title,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
