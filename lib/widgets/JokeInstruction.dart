import 'package:flutter/material.dart';

class JokeInstruction extends StatelessWidget {
  const JokeInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.black54,
        ),
        child: const Center(
          child: Text(
            'Swipe left/right for more Jokes',
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}