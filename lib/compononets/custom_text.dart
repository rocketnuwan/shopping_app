import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/utils/app_colors.dart';
class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 15,
    this.color = kwhiteDark,
    this.fontWeight,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: fontSize, color: color, fontWeight: fontWeight),
    );
  }
}
