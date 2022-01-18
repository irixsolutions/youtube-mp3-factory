import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Widgets/common/widgets/custom_text.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String text = "dark";
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            const ListTile(
              leading: FaIcon(FontAwesomeIcons.paintBrush),
              title: CustomText(
                color: kblack,
                text: "Appearence",
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SwitchListTile(
                activeColor: primaryColor,
                value: _isSwitched,
                onChanged: (isSwitched) {
                  setState(() {
                    _isSwitched = isSwitched;
                  });

                  if (isSwitched) {
                    setState(() {
                      text = "light";
                    });
                  } else {
                    text = "dark";
                  }
                },
                title: CustomText(color: kblack, text: "Switch to $text mode"),
              ),
            ),
          ],
        );
      },
    );
  }
}
