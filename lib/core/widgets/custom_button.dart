import 'package:flutter/material.dart';
import '../appColor/AppColor.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: AppColor.red,
        foregroundColor: AppColor.white,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
      ),

      onPressed: onTap,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColor.white,
            ),
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
