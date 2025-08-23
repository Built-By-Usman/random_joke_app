import 'package:flutter/material.dart';

class JokeHeader extends StatelessWidget {
  const JokeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Jokes",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w300,
        fontFamily: 'poppins',
      ),
    );
  }
}