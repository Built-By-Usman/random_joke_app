import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/JokeController.dart';

class JokeCategorySelector extends StatelessWidget {
  final JokeController controller;
  const JokeCategorySelector({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: controller.toggleDropdown,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.selectedCategory.value,
                    style: const TextStyle(
                      fontSize: 22,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    controller.isExpanded.value
                        ? Icons.keyboard_arrow_up_sharp
                        : Icons.keyboard_arrow_down_sharp,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          if (controller.isExpanded.value)
            Column(
              children: controller.categories.map((cat) {
                return GestureDetector(
                  onTap: () => controller.setCategory(cat),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Text(
                      cat,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'poppins',
                        color: cat == controller.selectedCategory.value
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}