import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:basics/styled_text.dart';

// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;
// final startAlignment = Alignment.topLeft;
// final endAlignment = Alignment.bottomRight;
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// Alignment? startAlignment;

class GradientContainer extends StatelessWidget {
// class GradientContainer extends StatefulWidget {
  // GradientContainer(){
  //   // initializeation work
  //   // add some coomment
  // }
  // GradientContainer({key}): super(key:key); // same as below
  const GradientContainer(this.color1, this.color2, {super.key});
  // {super.key, required this.color1, required this.color2});
  // const GradientContainer({super.key, required this.colors});
  // final List<Color> colors;
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
        // child: StyledText('Hello World'),
      ),
    );
  }
}
