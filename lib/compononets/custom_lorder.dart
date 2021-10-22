import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shopping_app/utils/app_colors.dart';

class CustomLorder extends StatelessWidget {
  const CustomLorder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitSpinningLines(
      lineWidth: 5,
      color: pink,
      size: 50.0,
    );
  }
}
