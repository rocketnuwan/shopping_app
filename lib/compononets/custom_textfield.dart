import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.lable
  }) : super(key: key);

  final lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grayLight,
      padding: const EdgeInsets.all(5),
     child:  TextField(
     style: const TextStyle(
       color: kwhite
       ,fontSize: 14
     ),
     decoration: InputDecoration(
       labelText: lable,
       labelStyle: const TextStyle(
      color: gray,
       fontSize: 15),
       fillColor: grayLight,
       filled: true,
       border: InputBorder.none,
       
     ),
   ),
   );
  }
}