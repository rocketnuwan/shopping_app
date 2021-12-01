import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/compononets/custom_dialog.dart';
import 'package:shopping_app/compononets/custom_lorder.dart';
import 'package:shopping_app/compononets/custom_topic.dart';
import 'package:shopping_app/compononets/custom_textfield.dart';
import 'package:shopping_app/compononets/page_end_line.dart';
import 'package:shopping_app/compononets/social_buttons.dart';
import 'package:shopping_app/controllers/auth_controller.dart';
import 'package:shopping_app/screens/login_screens/login_page_sreen.dart';
import 'package:shopping_app/utils/app_colors.dart';
import 'package:shopping_app/utils/util_functions.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({
    Key? key,
  }) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  bool isname = true;
  bool isemail = true;
  bool ispassword = true;
  bool buttonClicked = false;
  bool isLogin = false;

  FirebaseAuth auth = FirebaseAuth.instance;

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
              onPressed: () {},
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomTopic(
                topic: "Sing up",
              ),
              const SizedBox(
                height: 73,
              ),
              CustomTextField(
                lable: "Name",
                controller: _name,
                validation: isname,
                isButtonClicked: buttonClicked,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                lable: "Email",
                controller: _email,
                validation: isemail,
                isButtonClicked: buttonClicked,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                lable: "Password",
                ispassword: true,
                controller: _password,
                validation: ispassword,
                isButtonClicked: buttonClicked,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 200,
                  child: InkWell(
                    onTap: () {
                      UtilFunctions.navigator(context, const LoginPageScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: (const [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(fontSize: 15, color: kwhiteDark),
                        ),
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: pink,
                        )
                      ]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
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
                            String error = await AuthController().userRegister(
                              context,
                              _email.text,
                              _password.text,
                              _name.text,
                            );

                            if (error == "email") {
                              isemail = false;
                            }
                            if (error == "password") {
                              ispassword = false;
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
                          "SIGN UP",
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
                height: 50,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or sign up with social account",
                    style: TextStyle(fontSize: 15, color: kwhiteDark),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      image: "google.png",
                      ontab: () {},
                    ),
                    SocialButton(
                      image: "facebook.png",
                      ontab: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const PageEndLine(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  inputValidation() {
    bool _isValid = false;
    if (_name.text.isEmpty || _email.text.isEmpty || _password.text.isEmpty) {
      _isValid = false;
      if (_name.text.isEmpty) {
        isname = false;
      } else {
        isname = true;
      }
      if (_email.text.isEmpty) {
        isemail = false;
      }
      if (_password.text.isEmpty) {
        ispassword = false;
      } else {
        ispassword = true;
      }
    } else if (!EmailValidator.validate(_email.text)) {
      _isValid = false;
      isemail = false;
      isname = true;
      ispassword = true;
    } else {
      _isValid = true;
      isname = true;
      isemail = true;
      ispassword = true;
    }
    return _isValid;
  }
}
