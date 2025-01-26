import 'package:flutter/material.dart';
import 'dart:math';

var randomnizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  void startroll() {
    setState(() {
      currentDice = randomnizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDice.png",
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: startroll,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            side: const BorderSide(color: Colors.white, width: 2),
          ),
          child: const Text(
            "Roll Dice",
            style: TextStyle(fontSize: 28),
          ),
        )
      ],
    );
  }
}
