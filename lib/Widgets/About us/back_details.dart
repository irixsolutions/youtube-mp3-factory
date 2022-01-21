import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Widgets/About%20us/social_media_launch.dart';

import 'details.dart';

class BackDetails extends StatelessWidget {
  const BackDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      //
      height: ScreenSize.height * 0.8,
      width: ScreenSize.width * 0.9,
      //alignment: Alignment.topLeft,
      transformAlignment: Alignment.topLeft,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(80)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: kWhite),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  'Youtube MP3 \n Factory',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          author(),
          version(),
          term(),
          sociallinks()
        ],
      ),
    );
  }
}
