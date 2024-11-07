import 'package:firstapplication/dice_roller.dart';
import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
const page2({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.lightGreen, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
