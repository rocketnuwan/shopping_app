import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_colors.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold,color: kwhite),
      ),
      style: ElevatedButton.styleFrom(
          primary: pink,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25))),
    );
  }
}