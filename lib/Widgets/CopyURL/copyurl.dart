import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Models/downloader.dart';

class Copyurl extends StatefulWidget {
  const Copyurl({Key? key}) : super(key: key);

  @override
  State<Copyurl> createState() => _CopyurlState();
}

class _CopyurlState extends State<Copyurl> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.all(0),
      title: title(),
      content: content(textEditingController: _textController),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              child: const Text('Download'),
              onPressed: () {
                if (_textController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("No link pasted")));
                } else {
                  ///Download the video
                  Download().downloadVideo(
                      _textController.text.trim(), "Youtube Downloader");
                }
              },
            ),
            TextButton(
              child: const Text('Clear'),
              onPressed: () {
                _textController.clear();
              },
            ),
          ],
        )
      ],
    );
  }
}

Widget title() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 15),
    color: primaryColor,
    child: const Text(
      "Paste & Download",
      style: TextStyle(color: kWhite),
      textAlign: TextAlign.center,
    ),
  );
}

Widget content({required TextEditingController textEditingController}) {
  return SizedBox(
    width: double.minPositive,
    child: TextFormField(
      controller: textEditingController,
      decoration: const InputDecoration(
        hintText: 'Paste url here...',
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
      ),
    ),
  );
}
