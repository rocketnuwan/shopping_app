import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Shop Screen'),
    );
  }
}
