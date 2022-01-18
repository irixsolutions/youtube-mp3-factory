import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:youtube_mp3_factory/Screens/Wrapper/wrapper.dart';
import 'package:youtube_mp3_factory/Screens/Downloads/downloads.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          )),
      home: Scaffold(appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: const Downloads(),
      ),
      
    );
  }
}



//use width and height  like :-  
  //ScreenSize.height  and    ScreenSize.width


 

