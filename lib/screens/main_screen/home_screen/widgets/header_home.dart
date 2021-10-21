import 'package:flutter/material.dart';
import 'package:shopping_app/compononets/custom_text.dart';
import 'package:shopping_app/utils/app_colors.dart';
import 'package:shopping_app/utils/constants.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 220,
      child: Stack(children: [
        Container(
          width: size.width,
          height: 220,
          child: Image.asset(
            Constants.imageAssets('header.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: CustomText(
              text: 'Street clothes',
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: kwhite,
            ),
          ),
        )
      ]),
    );
  }
}
