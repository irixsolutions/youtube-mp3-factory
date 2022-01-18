import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.color,
    this.fontSize,
    this.fontWeight,
    this.letterspacing,
    this.shadow,
    required this.text,
    this.textAlign,
    this.maxLines = 1,
    this.textScaleFactor,
  }) : super(key: key);

  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterspacing;
  final dynamic shadow;
  final String text;
  final TextAlign? textAlign;
  final int maxLines;
  final double? textScaleFactor;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: 15,
      maxFontSize: 25,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      style: TextStyle(
        
        overflow: TextOverflow.fade,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterspacing,
        shadows: shadow,
      ),
      textAlign: textAlign,
    );
  }
}
