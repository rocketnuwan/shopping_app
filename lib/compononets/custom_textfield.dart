import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.lable,
    this.ispassword=false,
    required this.controller
  }) : super(key: key);

  final String lable;
  final bool ispassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grayLight,
      padding: const EdgeInsets.all(5),
     child:  TextField(
       obscureText: ispassword,
       controller: controller,
     style: const TextStyle(
       color: kwhiteDark
       ,fontSize: 14
     ),
     decoration: InputDecoration(
      labelText: lable,
      labelStyle: const TextStyle(
      color: gray,
      fontSize: 14),
      fillColor: grayLight,
      filled: true,
      border: InputBorder.none, 
     ),
   ),
   );
  }
}