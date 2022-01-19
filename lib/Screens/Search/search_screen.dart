import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_mp3_factory/Constants/colors.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: 40),
          FieldRow(),
        ],
      ),
    );
  }
}


class FieldRow extends StatelessWidget {
  const FieldRow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 10 ),
      child: SizedBox(
        width: ScreenSize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon: const FaIcon(Icons.chevron_left, size: 40,)),
             const Flexible(child: CustomTextField()),
          ],
        ),
      ),
    );
  }
}


class CustomTextField extends StatefulWidget {
  const CustomTextField({ Key? key }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (val){
        setState(() {
          debugPrint(val.toString());
        });
      },
      controller: _search,
      cursorColor:primaryColor,
      decoration: InputDecoration(
        border:const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)
        ),
        focusedBorder:const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)
        ),
      suffixIcon: IconButton(onPressed: (){
        setState(() {
          _search.clear();
        });
      }, icon: const Icon(Icons.close, color: kblack,),
        ),
        hintText: "Search...",
      ),
    );
  }
}