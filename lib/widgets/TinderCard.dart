import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/models/JokeModels.dart';

class TinderCard extends StatelessWidget {
  final JokeModel joke;

  const TinderCard({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                joke.setup,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'poppins',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Text(
                '~😀 ${joke.delivery}',
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppins',
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
