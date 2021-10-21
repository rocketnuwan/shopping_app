import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_colors.dart';
import 'package:shopping_app/utils/constants.dart';

// ignore: must_be_immutable
class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.image,
    required this.ontab,
  }) : super(key: key);

  final String image;
  final Function() ontab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: grayBackground,
      child: Image.asset(Constants.imageAssets(image)),onTap: ontab,);
  }
}
