import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Screens/Wrapper/wrapper.dart';
import 'Providers/providers.dart';

void main() {
  runApp(const MyApp());
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kWhite,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const Wrapper(),
      ),
    );
  }
}



//use width and height  like :-  
  //ScreenSize.height  and    ScreenSize.width


 

