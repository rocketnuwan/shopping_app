import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/compononets/custom_dialog.dart';
import 'package:shopping_app/compononets/custom_lorder.dart';
import 'package:shopping_app/compononets/custom_topic.dart';
import 'package:shopping_app/compononets/custom_text.dart';
import 'package:shopping_app/compononets/custom_textfield.dart';
import 'package:shopping_app/compononets/page_end_line.dart';
import 'package:shopping_app/controllers/auth_controller.dart';
import 'package:shopping_app/utils/app_colors.dart';
import 'package:shopping_app/utils/util_functions.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _email = TextEditingController();
  bool isLogin = false;
  bool isemail = true;
  bool buttonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayBackground,
      appBar: AppBar(
        backgroundColor: grayBackground,
        elevation: 0,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                UtilFunctions.navigatorBback(context);
              },
              icon: const Icon(
                Icons.chevron_left_outlined,
                color: kwhiteDark,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CustomTopic(
                      topic: "Forgot password",
                    ),
                    const SizedBox(
                      height: 73,
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: const CustomText(
                          text:
                              "Please, enter your email address. You will receive a link to create a new password via email.",
                        )),
                    CustomTextField(
                      lable: "Email",
                      controller: _email,
                      isButtonClicked: buttonClicked,
                      validation: isemail,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: isLogin
                          ? const CustomLorder()
                          : ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  isLogin = true;
                                });
                                buttonClicked = true;
                                if (inputValidation()) {
                                  String error = await AuthController()
                                      .resetPassword(context, _email.text);

                                  if (error != "") {
                                    isemail = false;
                                  }
                                } else {
                                  CustomDialog().dialogBox(
                                    context,
                                    "Please input corret details..",
                                    DialogType.ERROR,
                                  );
                                }

                                setState(() {
                                  isLogin = false;
                                });
                              },
                              child: const Text(
                                "SEND",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: kwhite),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: pink,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                            ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: (const [
                PageEndLine(),
                SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  inputValidation() {
    bool isvalidate = false;
    if (_email.text.isEmpty) {
      isvalidate = false;
      if (_email.text.isEmpty) {
        isemail = false;
      }
    } else if (!EmailValidator.validate(_email.text)) {
      isvalidate = false;
      isemail = false;
    } else {
      isvalidate = true;
      isemail = true;
    }
    return isvalidate;
  }
}
