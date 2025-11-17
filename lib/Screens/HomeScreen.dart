import 'package:flutter/material.dart';
import 'package:spacee_app/core/widgets/header_section.dart';
import '../core/appColor/AppColor.dart';
import '../core/route/route.dart';
import '../core/widgets/custom_button.dart';
import '../models/planet.dart';
import 'PlanetDetailsScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  PageController controller = PageController(initialPage: 0);
  int selectedIndex = 0;

  void prevPage() {
    controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void nextPage() {
    controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Column(
        children: [
          HeaderSection(
            title: 'Explore',
            subtitle: 'Which planet would you like to explore?',
          ),
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (newIndex) {
                setState(() {
                  selectedIndex = newIndex;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  Planet.planets[index % Planet.planets.length].image,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColor.red,
                  foregroundColor: AppColor.white,
                  shape: CircleBorder(),
                ),
                onPressed: prevPage,
                child: Icon(Icons.arrow_back_rounded),
              ),
              Text(
                Planet.planets[selectedIndex % Planet.planets.length].name,
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColor.red,
                  foregroundColor: AppColor.white,
                  shape: CircleBorder(),
                ),
                onPressed: nextPage,
                child: Icon(Icons.arrow_forward_rounded),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: CustomButton(
              title:
                  "Explore  ${Planet.planets[selectedIndex % Planet.planets.length].name}",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoute.PlanetDetailsScreen.name,
                  arguments: Planet.planets[selectedIndex % Planet.planets.length],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
