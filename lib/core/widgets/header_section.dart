import 'package:flutter/material.dart';
import '../appColor/AppColor.dart';
import '../appImages/AppImages.dart';

class HeaderSection extends StatelessWidget {
  final String title;
  final String subtitle;

  const HeaderSection({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.appBar,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  //AppColor.black.withOpacity(0.7),
                  AppColor.black.withValues(alpha: 0.7),
                  AppColor.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      subtitle,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
