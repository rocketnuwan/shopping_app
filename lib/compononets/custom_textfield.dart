import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.lable
  }) : super(key: key);

  final lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      padding: const EdgeInsets.all(5),
     child:  TextField(
     style: TextStyle(
       color: Theme.of(context).dividerColor
       ,fontSize: 14
     ),
     decoration: InputDecoration(
       labelText: lable,
       labelStyle: const TextStyle(
      color: Color(0xFF9B9B9B),
       fontSize: 15),
       fillColor: Theme.of(context).accentColor,
       filled: true,
       border: InputBorder.none,
       
     ),
   ),
   );
  }
}