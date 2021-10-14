
import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier{
  static bool _isDarkTheme = false;
  ThemeMode get applycurrentTheme => _isDarkTheme ? ThemeMode.dark: ThemeMode.light;

  void toggleTheme(){
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme{
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xffE6E3E3),
      appBarTheme:const AppBarTheme(
        backgroundColor: Color(0xffE6E3E3), 
        foregroundColor: Colors.black
      ),
      textTheme:const TextTheme(
        bodyText2: TextStyle(color: Colors.black),
        ),
        accentColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFFDB3022),
          ),
        ),
        dividerColor: Colors.black,
        
    );
  }

  static ThemeData get darkTheme{
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xff1E1F28),
      appBarTheme:const AppBarTheme(
        backgroundColor: Color(0xff1E1F28),
        foregroundColor: Colors.white
        ),
      textTheme:const TextTheme(
        bodyText2: TextStyle(color: Colors.white),
        
        ),
        accentColor: const Color(0xff2A2C36),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xFFEF3651),
          ),
        ),
        dividerColor: Colors.white,
        
    );
  }

}