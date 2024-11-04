import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore meaning private (can't connect with other packages)
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDIceRoll = 2;

  void rollDice() {
    // Random().nextInt(6) // 0 <> 5
    // var diceRoll = Random().nextInt(6) + 1;
    // when build is excuted, activeDiceImage doesn't act so we call setState
    setState(() {
      // to lower memory occupation,Random Class allocate to randomizer (to call one time)
      currentDIceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$currentDIceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDIceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          // onPressed: () {}, //  option1: ananymus function
          child: const Text('Roll Dice'),
        )
        // ElevatedButton(onPressed: onPressed, child: child)
        // OutlinedButton(onPressed: onPressed, child: child)
        // TextButton(onPressed: onPressed, child: child)
      ],
    );
  }
}
