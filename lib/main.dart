import 'package:flutter/material.dart';
import 'package:shopping_app/screens/Home/home.dart';
import 'package:shopping_app/screens/login_screens/register_page.dart';
import 'package:shopping_app/utils/app_theme.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
    currentTheme.addListener(() {
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "futter App",
      home:const RegistrationPage(),
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.applycurrentTheme,
    );
  }
}

