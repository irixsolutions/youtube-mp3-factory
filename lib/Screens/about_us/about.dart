
import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';

// ignore: camel_case_types
class about_us extends StatelessWidget {
  const about_us({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return iniwidget();
  }
}
Widget iniwidget() {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 280,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150)),
              color: primaryColor
            ),
            transform: Matrix4.rotationZ(-0.5)
            
            ),
          
          
        ],
        
      ),
      
    ),
    
  );
}