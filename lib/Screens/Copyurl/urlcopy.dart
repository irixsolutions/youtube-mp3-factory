import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Models/downloder.dart';

class Copyurl extends StatelessWidget {
   Copyurl({ Key? key }) : super(key: key);

TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {    
    return AlertDialog(
    title: const Center(child: Text('Enter Url To Download',
              style: TextStyle(color: primaryColor))), 
    content: SizedBox(
      width: double.minPositive,
      child: TextFormField(
        controller: _textController,
        decoration: const InputDecoration(hintText: 'paste url...',
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: primaryColor))
        )
        ),    
    ),
    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
             child: const Text('Download'),
            onPressed:(){
              if (_textController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("No link pasted")));
                  } else {
                    ///Download the video
                    Download().downloadVideo(
                        _textController.text.trim(), "Youtube Downloader");
                        
                  }
            } ),
            TextButton(child: const Text('Clear'), 
            onPressed: () {

              _textController.clear();
            }),
        ],
      )
    ],
    );
  }
}