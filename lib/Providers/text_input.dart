import 'package:flutter/cupertino.dart';
import 'package:youtube_mp3_factory/Database/database.dart';
import 'package:youtube_mp3_factory/Models/video.dart';

class TextInput extends ChangeNotifier {
  String? inputText;
  List<Video> foundedVideos = [];

  onChanged({required String val}) {
    inputText = val;
    notifyListeners();
  }

  onSearch(String search) {
    foundedVideos = Database.videoList
        .where((user) => user.title.toLowerCase().contains(search))
        .toList();
    notifyListeners();
  }
}
