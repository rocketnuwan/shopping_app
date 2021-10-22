import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopping_app/compononets/custom_dialog.dart';
import 'package:shopping_app/controllers/db_controller.dart';
import 'package:shopping_app/screens/main_screen/home_screen/home_screen.dart';
import 'package:shopping_app/utils/util_functions.dart';

class AuthController {
  FirebaseAuth auth = FirebaseAuth.instance;

  //user registration
  Future<String> userRegister(
    BuildContext context,
    String _email,
    String _password,
    String _name,
  ) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: _email,
        password: _password,
      );

      if (userCredential.user!.uid.isNotEmpty) {
        await DBController().saveUserData(
            context, auth.currentUser!.uid, _name, _email, _password);
      }

      CustomDialog().dialogBox(
        context,
        'Welcome to shopping wit us.............',
        DialogType.SUCCES,
      );
      Future.delayed(const Duration(seconds: 3), () {
        UtilFunctions.navigator(context, const HomeScreen());
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        CustomDialog().dialogBox(
          context,
          'The password provided is too weak.............',
          DialogType.ERROR,
        );
        return "password";
      } else if (e.code == 'email-already-in-use') {
        CustomDialog().dialogBox(
          context,
          'The account already exists for that email.',
          DialogType.ERROR,
        );
        return "email";
      }
    } catch (e) {
      CustomDialog().dialogBox(
        context,
        e.toString(),
        DialogType.ERROR,
      );
    }
    return "";
  }

  //user Signin
  Future<String> userSignIn(
    BuildContext context,
    String _email,
    String _password,
  ) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      CustomDialog().dialogBox(
        context,
        'Welcome to shopping with us.............',
        DialogType.SUCCES,
      );
      Future.delayed(const Duration(seconds: 3), () {
        UtilFunctions.navigator(context, const HomeScreen());
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        CustomDialog().dialogBox(
          context,
          'No user found for that email.',
          DialogType.ERROR,
        );
        return "email";
      } else if (e.code == 'wrong-password') {
        CustomDialog().dialogBox(
          context,
          'Wrong password provided for that user.',
          DialogType.ERROR,
        );
        return "password";
      }
    }
    return "";
  }

  //reset password email
  Future<String> resetPassword(
    BuildContext context,
    String _email,
  ) async {
    try {
      await auth.sendPasswordResetEmail(email: _email);
      CustomDialog().dialogBox(
          context, "Success..! Please check your email", DialogType.SUCCES);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        CustomDialog()
            .dialogBox(context, "Please enter valid email", DialogType.ERROR);
        return "Not a valid email address. Should be your@email.com";
      }
      if (e.code == "user-not-found") {
        CustomDialog()
            .dialogBox(context, "No Use Found email", DialogType.ERROR);
        return "Not a valid email address. Should be your@email.com";
      } else {
        CustomDialog().dialogBox(context, e.toString(), DialogType.ERROR);
        return "Not a valid email address. Should be your@email.com";
      }
    } catch (e) {
      CustomDialog().dialogBox(context, e.toString(), DialogType.ERROR);
      return "Not a valid email address. Should be your@email.com";
    }
    return "";
  }
}
