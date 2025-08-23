import 'package:flutter/material.dart';

class Gradient extends StatelessWidget {
  const Gradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color(0xFFF1E7CB), Colors.white],
            center: Alignment.center,
            radius: 1,
            stops: [0.3, 1],
          ),
        ),
      ),
    );
  }
}
