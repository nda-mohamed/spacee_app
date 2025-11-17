import 'package:spacee_app/core/appImages/AppImages.dart';
import 'package:spacee_app/core/appModels/3dModels.dart';

class Planet {
  String name;
  String image;
  String model;
  String title;
  String about;
  String distanceFromSun;
  String dayLength;
  String orbitalPeriod;
  String radius;
  String mass;
  String gravity;
  String surfaceArea;

  Planet({
    required this.name,
    required this.image,
    required this.model,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.dayLength,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });

  static List<Planet> planets = [
    Planet(
      name: 'Sun',
      image: AppImages.sunImage,
      model: AppModels.sunModel,
      title: "The Sun: Our Solar System's Star",
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to all the planets. It makes up more than 99% of the solar system’s total mass.",
      distanceFromSun: '0',
      dayLength: '0',
      orbitalPeriod: '0',
      radius: '695,700',
      mass: '1.989 × 10³⁰',
      gravity: '274',
      surfaceArea: '6.09 × 10¹²',
    ),

    Planet(
      name: 'Mercury',
      image: AppImages.mercuryImage,
      model: AppModels.mercuryModel,
      title: 'Mercury: The Closest Planet',
      about:
      "Mercury is the innermost planet in the solar system, known for its extremely thin atmosphere and dramatic temperature changes.",
      distanceFromSun: '57,909,227',
      dayLength: '1,407.60',
      orbitalPeriod: '0.24',
      radius: '2,439.70',
      mass: '3.301 × 10²³',
      gravity: '3.7',
      surfaceArea: '7.48 × 10⁷',
    ),

    Planet(
      name: 'Venus',
      image: AppImages.venusImage,
      model: AppModels.venusModel,
      title: "Venus: Earth's Toxic Twin",
      about:
      "Venus is often referred to as Earth’s twin because of its size, but its surface is extremely hot and covered with thick, toxic clouds of carbon dioxide.",
      distanceFromSun: '108,209,072',
      dayLength: '5,832.00',
      orbitalPeriod: '0.62',
      radius: '6,051.80',
      mass: '4.867 × 10²⁴',
      gravity: '8.87',
      surfaceArea: '4.60 × 10⁸',
    ),

    Planet(
      name: 'Earth',
      image: AppImages.earthImage,
      model: AppModels.earthModel,
      title: 'Earth: Our Blue Marble',
      about:
      "Earth is the only known planet in the universe that supports life. It has liquid water, a protective atmosphere, and diverse ecosystems.",
      distanceFromSun: '149,598,026',
      dayLength: '24',
      orbitalPeriod: '1',
      radius: '6,371',
      mass: '5.972 × 10²⁴',
      gravity: '9.81',
      surfaceArea: '5.10 × 10⁸',
    ),

    Planet(
      name: 'Mars',
      image: AppImages.marsImage,
      model: AppModels.marsModel,
      title: 'Mars: The Red Planet',
      about:
      "Mars is known for its red surface due to iron oxide. Scientists are exploring it for signs of past water and potential future human missions.",
      distanceFromSun: '227,943,824',
      dayLength: '24.62',
      orbitalPeriod: '1.88',
      radius: '3,389.50',
      mass: '6.39 × 10²³',
      gravity: '3.71',
      surfaceArea: '1.45 × 10⁸',
    ),

    Planet(
      name: 'Jupiter',
      image: AppImages.jupiterImage,
      model: AppModels.jupiterModel,
      title: 'Jupiter: The Gas Giant',
      about:
      "Jupiter is the largest planet in the solar system, known for its Great Red Spot and strong magnetic field.",
      distanceFromSun: '778,340,821',
      dayLength: '9.92',
      orbitalPeriod: '11.86',
      radius: '69,911',
      mass: '1.898 × 10²⁷',
      gravity: '24.79',
      surfaceArea: '6.21 × 10¹⁵',
    ),

    Planet(
      name: 'Saturn',
      image: AppImages.saturnImage,
      model: AppModels.saturnModel,
      title: 'Saturn: The Ringed Planet',
      about:
      "Saturn is famous for its stunning ring system made of ice and rock particles. It is a gas giant with a thick atmosphere.",
      distanceFromSun: '1,426,666,422',
      dayLength: '10.66',
      orbitalPeriod: '29.46',
      radius: '58,232',
      mass: '5.683 × 10²⁶',
      gravity: '10.44',
      surfaceArea: '4.27 × 10¹⁵',
    ),

    Planet(
      name: 'Uranus',
      image: AppImages.uranusImage,
      model: AppModels.uranusModel,
      title: 'Uranus: The Tilted Planet',
      about:
      "Uranus is unique because it rotates on its side. It has a cold atmosphere and faint rings.",
      distanceFromSun: '2,870,658,186',
      dayLength: '17.24',
      orbitalPeriod: '84.01',
      radius: '25,362',
      mass: '8.681 × 10²⁵',
      gravity: '8.69',
      surfaceArea: '8.1 × 10¹⁵',
    ),

    Planet(
      name: 'Neptune',
      image: AppImages.neptuneImage,
      model: AppModels.neptuneModel,
      title: 'Neptune: The Distant World',
      about:
      "Neptune is the farthest known planet from the Sun. It has strong winds and a deep blue color due to methane in its atmosphere.",
      distanceFromSun: '4,498,396,441',
      dayLength: '16.11',
      orbitalPeriod: '164.80',
      radius: '24,622',
      mass: '1.024 × 10²⁶',
      gravity: '11.15',
      surfaceArea: '7.65 × 10¹⁵',
    ),
  ];

}
