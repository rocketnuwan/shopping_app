import 'package:flutter/material.dart';
import 'package:shopping_app/compononets/custom_images.dart';
import 'package:shopping_app/screens/main_screen/cart_screen/cart_screen.dart';
import 'package:shopping_app/screens/main_screen/favorites_screen/favourite_screen.dart';
import 'package:shopping_app/screens/main_screen/home_screen/home_screen.dart';
import 'package:shopping_app/screens/main_screen/profile_screen/profile_screen.dart';
import 'package:shopping_app/screens/main_screen/shop_screen/shop_screen.dart';
import 'package:shopping_app/utils/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Widget> _screens = [
    HomeScreen(),
    ShopScreen(),
    CartScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: _screens.elementAt(_currentIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                spreadRadius: 8,
                blurRadius: 8,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Color(0xff1E1F28),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        height: 83,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavTile(
              icon: 'home',
              isSelected: _currentIndex == 0,
              ontap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            BottomNavTile(
              icon: 'cart',
              isSelected: _currentIndex == 1,
              ontap: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            BottomNavTile(
              icon: 'bag',
              isSelected: _currentIndex == 2,
              ontap: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            BottomNavTile(
              icon: 'favourite',
              isSelected: _currentIndex == 3,
              ontap: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            BottomNavTile(
              icon: 'profile',
              isSelected: _currentIndex == 4,
              ontap: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavTile extends StatelessWidget {
  const BottomNavTile({
    Key? key,
    required this.icon,
    required this.isSelected,
    required this.ontap,
  }) : super(key: key);
  final String icon;
  final bool isSelected;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
          width: 24,
          height: 24,
          child: CustomSvg(svgName: icon, color: isSelected ? navpink : kwhite),
        ));
  }
}
