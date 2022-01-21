import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Screens/About%20Us/about_us.dart';
import 'package:youtube_mp3_factory/Screens/Wrapper/wrapper.dart';

import 'route_names.dart';

Map<String, Widget Function(BuildContext)> routes = {
  wrapper: (context) => const Wrapper(),
  aboutus: (context) => const AboutUs(),
};
