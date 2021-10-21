import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UtilFunctions{

//page navigator push
static void navigator(BuildContext context,Widget widget){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> widget));
}

//page navigator back
static void navigatorBback(BuildContext context){
  Navigator.of(context).pop();
}
}