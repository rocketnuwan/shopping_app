import 'package:flutter/material.dart';
import 'package:shopping_app/compononets/custom_images.dart';
import 'package:shopping_app/compononets/custom_text.dart';
import 'package:shopping_app/screens/main_screen/home_screen/widgets/header_home.dart';
import 'package:shopping_app/screens/main_screen/home_screen/widgets/sales.dart';
import 'package:shopping_app/utils/app_colors.dart';
import 'package:shopping_app/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderHomePage(size: size),
          BottomSection(),
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 18, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Sale',
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: CustomText(
                      text: 'View All',
                      fontSize: 11,
                    ),
                  )
                ],
              ),
              CustomText(
                text: 'Super summer sale',
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 20,
              ),
              Sales(),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'New',
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: CustomText(
                      text: 'View All',
                      fontSize: 11,
                    ),
                  )
                ],
              ),
              CustomText(
                text: 'You’ve never seen it before!',
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 20,
              ),
              Sales(),
            ],
          ),
        ),
      ),
    );
  }
}
