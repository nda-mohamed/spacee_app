import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:spacee_app/core/appColor/AppColor.dart';
import 'package:spacee_app/core/widgets/Planet_Info.dart';
import '../core/widgets/header_section.dart';
import '../models/planet.dart';

class PlanetDetailsScreen extends StatefulWidget {
  const PlanetDetailsScreen({super.key});

  @override
  State<PlanetDetailsScreen> createState() => _PlanetDetailsScreenState();
}

class _PlanetDetailsScreenState extends State<PlanetDetailsScreen> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    Planet planet = ModalRoute.of(context)?.settings.arguments as Planet;

    return Scaffold(
      backgroundColor: AppColor.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              HeaderSection(title: planet.name, subtitle: planet.title),
              Positioned(
                top: 40,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColor.red,
                    foregroundColor: AppColor.white,
                    shape: CircleBorder(),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_rounded),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Flutter3DViewer(
                        onLoad: (String modelAddress) {
                          setState(() {
                            isLoading = false;
                          });
                        },
                        onError: (String error) {
                          setState(() {
                            isLoading = false;
                          });
                        },
                        src: planet.model,
                      ),
                    ),
                    if (isLoading)
                      SizedBox(
                        height: 300,
                        child: Center(
                          child: CircularProgressIndicator(color: AppColor.white),
                        ),
                      ),
                  ],
                ),
                Text(
                  'About',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  planet.about,
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 16),
                PlanetInfo(text: 'Distance from Sun (km): ${planet.distanceFromSun}'),
                PlanetInfo(text: 'Length of Day (hours): ${planet.dayLength}'),
                PlanetInfo(text: 'Orbital Period (Earth years): ${planet.orbitalPeriod}'),
                PlanetInfo(text: 'Radius (km): ${planet.radius}'),
                PlanetInfo(text: 'Mass (kg): ${planet.mass}'),
                PlanetInfo(text: 'Gravity (m/s²): ${planet.gravity}'),
                PlanetInfo(text: 'Surface Area (km²): ${planet.surfaceArea}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
