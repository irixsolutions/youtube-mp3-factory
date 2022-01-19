import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Constants/images.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ExploreHeading(
            heading: "Recently Played",
          ),
          SizedBox(
            height: 20,
          ),
          RecentList(),
          SizedBox(
            height: 20,
          ),
          ExploreHeading(
            heading: "Trending Now",
          ),
          Trending(),
        ],
      ),
    );
  }
}

class ExploreHeading extends StatelessWidget {
  final String heading;
  const ExploreHeading({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: CustomText(
        color: primaryColor,
        text: heading,
        fontWeight: FontWeight.bold,
        textScaleFactor: 1.5,
      ),
    );
  }
}

class RecentList extends StatefulWidget {
  const RecentList({Key? key}) : super(key: key);

  @override
  State<RecentList> createState() => _RecentListState();
}

class _RecentListState extends State<RecentList> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * 0.3,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 15, left: index == 0 ? 15 : 0),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: SizedBox(
                    child: Image.asset(
                      thumb,
                      fit: BoxFit.cover,
                    ),
                    width: ScreenSize.width * 0.4,
                    height: ScreenSize.height * 0.3,
                  ),
                ),
                Visibility(
                  visible: isVisible,
                  child: Container(
                    width: ScreenSize.width * 0.4,
                    height: ScreenSize.height * 0.3,
                    color: kblack.withOpacity(0.5),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(7.0),
                          child: CustomText(
                            color: kWhite,
                            text:
                                "CKay - Love Nwantiti Remix ft. Joeboy & Kuami Eugene [Ah Ah Ah]",
                            maxLines: 100,
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.3,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isVisible = false;
                            });
                          },
                          child: const CustomText(
                            color: kWhite,
                            text: "Download",
                          ),
                          style:
                              ElevatedButton.styleFrom(primary: primaryColor),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isVisible = false;
                            });
                          },
                          child: const CustomText(
                            color: kWhite,
                            text: "Play",
                          ),
                          style:
                              ElevatedButton.styleFrom(primary: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SizedBox(
            child: Image.asset(thumbHorizontal, fit: BoxFit.cover),
            height: ScreenSize.height * 0.25,
            width: ScreenSize.width,
          ),
        );
      },
    );
  }
}
