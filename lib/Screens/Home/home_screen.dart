import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Providers/home_b_navigation.dart';
import 'package:youtube_mp3_factory/Widgets/common/CustomAppBar/custom_app_bar.dart';
import 'package:youtube_mp3_factory/Widgets/common/CustomDrawer/drawer.dart';
import 'package:youtube_mp3_factory/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeBNavigation>(
      builder: (context, navigationData, child) {
        return SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              key: scaffoldKey,
              extendBody: true,
              bottomNavigationBar: CurvedNavigationBar(
                index: navigationData.currentIndex,
                color: primaryColor,
                backgroundColor: Colors.transparent,
          
                //IconList
                items: navigationData.items.map((ico) {
                  return FaIcon(
                    ico.icon,
                    color: kWhite,
                  );
                }).toList(),
          
                //ontap
                onTap: (index) {
                  navigationData.onIndexChange(index);
                },
              ),
          
              //Drawer
              drawer: const CustomDrawer(),
          
              //AppBar
              appBar: customAppbar(
                  title: navigationData.items[navigationData.currentIndex].title),
          
              //Body
              body: navigationData.routes[navigationData.currentIndex],
            ),
          ),
        );
      },
    );
  }
}
