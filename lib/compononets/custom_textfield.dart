import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.lable,
    this.ispassword = false,
    required this.controller,
    this.validation = true,
    this.isButtonClicked = false,
  }) : super(key: key);

  final String lable;
  final bool ispassword;
  final TextEditingController controller;
  final bool validation;
  bool isButtonClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: grayLight,
          border: Border.all(color: (validation) ? grayBackground : red)),
      padding: const EdgeInsets.all(5),
      child: TextField(
        cursorColor: kwhite,
        obscureText: ispassword,
        controller: controller,
        style: const TextStyle(color: kwhiteDark, fontSize: 14),
        decoration: InputDecoration(
          suffixIcon: isButtonClicked
              ? Icon(
                  validation ? Icons.done_outlined : Icons.close,
                  color: validation ? green : red,
                )
              : SizedBox(),
          labelText: lable,
          labelStyle: TextStyle(color: (validation) ? gray : red, fontSize: 14),
          fillColor: grayLight,
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
