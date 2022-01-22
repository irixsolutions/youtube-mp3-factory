import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Providers/text_input.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController search;
  const CustomTextField({Key? key, required this.search}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TextInput>(
      builder: (context, e, child) {
        return TextFormField(
          cursorHeight: 25,
          onChanged: (val) {
            e.onChanged(val: val);
            e.onSearch(val);
          },
          controller: search,
          cursorColor: primaryColor,
          decoration: InputDecoration(
            focusColor: primaryColor,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                search.clear();
              },
              icon: const Icon(
                Icons.close,
                color: primaryColor,
              ),
            ),
            hintText: "Search...",
          ),
        );
      },
    );
  }
}
