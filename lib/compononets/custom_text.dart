import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.fontSize=14,
  }) : super(key: key);

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style:TextStyle(
      fontSize: fontSize,
      color: kwhiteDark,
    ),
    );
  }
}