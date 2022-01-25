import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Widgets/Search/search_field.dart';
import 'package:youtube_mp3_factory/Widgets/Search/search_item_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        elevation: 0,
        backgroundColor: kWhite,
        title: CustomTextField(
          search: _search,
        ),
      ),
      body: const SearchList(),
    );
  }
}
