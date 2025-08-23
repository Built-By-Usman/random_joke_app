import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/JokeController.dart';
import '../widgets/JokeCategorySelector.dart';
import '../widgets/JokeHeader.dart';
import '../widgets/JokeInstruction.dart';
import '../widgets/JokeSwiper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final JokeController controller = Get.put(JokeController());

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfff6f2d6), // Soft cream
              Color(0xffedf6f8), // Light cyan
              Color(0xffe1eef8), // Light peach
              Color(0xfff6f3df), // Very light blue (adds freshness)
            ],
            stops: [0.0, 0.33, 0.66, 1],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const JokeHeader(),
              const SizedBox(height: 15),
              // category dropdown
              JokeCategorySelector(controller:controller),
              const SizedBox(height: 10),
              const JokeInstruction(),
              const SizedBox(height: 10),
              JokeSwiper(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
