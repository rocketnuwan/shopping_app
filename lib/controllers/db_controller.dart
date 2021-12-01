import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopping_app/compononets/custom_dialog.dart';

class DBController {
//firestore instance ctrate
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //create collection reference
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> saveUserData(
    BuildContext context,
    String uid,
    String name,
    String email,
    String password,
  ) {
    return users
        .add({
          'uid': uid,
          'name': name,
          'email': email,
          'password': password,
        })
        .then((value) => print("User Added"))
        .catchError((error) => CustomDialog().dialogBox(
              context,
              "Failed to add user",
              DialogType.ERROR,
            ));
  }
}
