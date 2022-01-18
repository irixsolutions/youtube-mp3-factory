import 'package:flutter/material.dart';

import '/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final double radius;
  final Widget text;
  final double minwidth;
  final double height;
  final Color bgColor;
  final void Function()? func;
  final bool iconRequired;
  final IconData? icon;

  const CustomButton({
    Key? key,
    this.radius = 10,
    required this.text,
    this.minwidth = 300,
    this.height = 60,
    this.bgColor = primaryColor,
    this.func,
    this.iconRequired = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(radius),
      child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text,
            ],
          ),
          minWidth: minwidth,
          height: height,
          onPressed: func),
    );
  }
}


// SpringButton buyNowButton(){
//   return SpringButton(SpringButtonType.OnlyScale, CustomButton(text: text))
// }