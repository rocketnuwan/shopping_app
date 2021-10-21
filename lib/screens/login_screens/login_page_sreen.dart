import 'package:flutter/material.dart';
import 'package:shopping_app/compononets/cusm_topic.dart';
import 'package:shopping_app/compononets/custom_main_button.dart';
import 'package:shopping_app/compononets/custom_textfield.dart';
import 'package:shopping_app/compononets/page_end_line.dart';
import 'package:shopping_app/compononets/social_buttons.dart';
import 'package:shopping_app/screens/login_screens/forgot_password_screen.dart';
import 'package:shopping_app/utils/app_colors.dart';
import 'package:shopping_app/utils/util_functions.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({ Key? key }) : super(key: key);

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
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
              icon:const Icon(
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
              const CustomTopic(topic: "Login",),
              const SizedBox(
                height: 73,
              ),
              CustomTextField(
                lable: "Email",
                controller: _email,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                lable: "Password",
                ispassword: true,
                controller: _password,
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
                      UtilFunctions.navigator(context,const ForgotPasswordPage());
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: (const [
                          Text(
                            "Forgot your password? ",
                            style: TextStyle(fontSize: 15,color: kwhiteDark),
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: pink,
                          )
                        ])),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const SizedBox(
                width: double.infinity,
                height: 60,
                child: CustomMainButton(text: "LOGIN",),
              ),
              const SizedBox(
                height: 120,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or sign up with social account",
                    style: TextStyle(
                      fontSize: 15,
                      color: kwhiteDark
                    ),
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
              const SizedBox(height: 30,),
              const PageEndLine(),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}