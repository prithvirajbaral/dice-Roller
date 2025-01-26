import 'package:first_practice_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.black, Color.fromARGB(255, 46, 45, 45), Colors.grey],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
