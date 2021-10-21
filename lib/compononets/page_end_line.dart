import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_colors.dart';

class PageEndLine extends StatelessWidget {
  const PageEndLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 134,
        child: Divider( 
               color: kwhite,
               thickness: 5,
               ),
      ),
    );
  }
}

