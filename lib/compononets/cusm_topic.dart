import 'package:flutter/material.dart';
import 'package:shopping_app/utils/app_colors.dart';

class CustomTopic extends StatelessWidget {
  const CustomTopic({
    Key? key,
    required this.topic,
  }) : super(key: key);

  final String topic;

  @override
  Widget build(BuildContext context) {
    return Text(
      topic,
      style: const TextStyle(
          fontSize: 34, fontWeight: FontWeight.bold, color: kwhiteDark),
    );
  }
}
