import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants.dart';


// ignore: must_be_immutable
class  SocialButton extends StatelessWidget {
  SocialButton({
    Key? key,
    required this.image,
    required this.ontab,
  }) : super(key: key);

  String image;
  dynamic ontab;

  @override
  Widget build(BuildContext context) {
    return InkWell(child: Image.asset(Constants.imageAssets(image)),onTap: ontab,);
  }
}
