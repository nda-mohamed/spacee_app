import 'package:flutter/material.dart';
import '../appColor/AppColor.dart';

class PlanetInfo extends StatelessWidget {
  final String text;

  const PlanetInfo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.white,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}