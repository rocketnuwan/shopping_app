import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopping_app/utils/app_colors.dart';

class CustomDialog {
  Future<dynamic> dialogBox(
    BuildContext context,
    String text,
    DialogType dialogType,
  ) async {
    return AwesomeDialog(
      context: context,
      buttonsTextStyle: const TextStyle(color: kwhite),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Text(
          text,
          style: const TextStyle(color: kwhite),
        ),
      ),
      headerAnimationLoop: true,
      dialogType: dialogType,
      animType: AnimType.BOTTOMSLIDE,
      dialogBackgroundColor: grayBackground,
      btnOkColor: (dialogType == DialogType.ERROR) ? red : green,
      btnOkOnPress: () {},
    )..show();
  }
}
