import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controller/JokeController.dart';
import 'TinderCard.dart';

class JokeSwiper extends StatelessWidget {
  final JokeController controller;
  JokeSwiper({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Obx(
            () => controller.jokes.isEmpty
            ? Center(child: Lottie.asset('assets/lottie/loading.json',width: 200,height: 200))
            : Center(
              child: SizedBox(
                        width: 450,
                        height: 420,
                        child: CardSwiper(
              numberOfCardsDisplayed:
              controller.jokes.length < 2 ? controller.jokes.length : 2,
              cardsCount: controller.jokes.length,
              cardBuilder: (
                  context,
                  index,
                  percentThresholdX,
                  percentThresholdY,
                  ) {
                return TinderCard(joke: controller.jokes[index]);
              },
                        ),
                      ),
            ),
      ),
    );
  }
}