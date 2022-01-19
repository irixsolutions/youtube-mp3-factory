import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';

class Copyurl extends StatelessWidget {
  const Copyurl({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    return AlertDialog(
    title: const Center(child: Text('Enter Url To Download',
              style: TextStyle(color: primaryColor))), 
    content: const SizedBox(
      width: double.minPositive,
      child: TextField(decoration: InputDecoration(hintText: 'paste url...',
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: primaryColor))
        )),
    ),
    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
             child: const Text('Download'),
            onPressed:(){} ),
            TextButton(child: const Text('Cancel'), 
            onPressed: () {}),
        ],
      )
    ],
    );
  }
}