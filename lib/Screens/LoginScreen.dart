import 'package:flutter/material.dart';
import 'package:spacee_app/core/appColor/AppColor.dart';
import '../core/appImages/AppImages.dart';
import '../core/route/route.dart';
import '../core/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image.asset(
            AppImages.background,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Explore\nThe\nUniverse",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: AppColor.white,
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            left: 16,
            right: 16,
            child: CustomButton(
              title: "Explore",
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRoute.HomeScreen.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
