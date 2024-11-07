import 'package:firstapplication/page1.dart';
import 'dart:math';

//import 'package:material_color_utilities';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  //DiceRoller({super.key})
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

@override
class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 2;
  var diceNumber1 = 2;
  var total_count = 0;

  void rollDice() {
    setState(() {
      if (total_count == 1 ||
          total_count == 2 ||
          total_count == 3 ||
          total_count == 4 ||
          total_count == 5) {
        total_count = 0;
        //print("\nthis is frist if for make it zero");
      }
      diceNumber = Random().nextInt(6) + 1;
      diceNumber1 = Random().nextInt(6) + 1;
      if (diceNumber == 6) {
        if (total_count == 6) {
          total_count += diceNumber;
          //print("\nfrom 6 first if $total_count");
        }
        if (total_count == 12) total_count = 0;
        if (total_count == 0) total_count = diceNumber;

        //print("\n total count from  last in 6 is $total_count");
      }
      if (diceNumber == 1||
          diceNumber == 2||
          diceNumber == 3||
          diceNumber == 4||
          diceNumber == 5) {
        if (total_count == 6 || total_count == 12) {
          total_count += diceNumber;
        } else {
          total_count = 0;
          total_count = diceNumber;
        }
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (total_count > 6)
          Text(
            '6+ $diceNumber = $total_count',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        if (total_count <= 6)
          Text(
            '$diceNumber',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        // else{
        //   Text('$diceNumber')
        //   },
        Image.asset(
          'images/dice-$diceNumber.png',
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 3,
        ),
        Image.asset(
          'images/dice-$diceNumber1.png',
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 3,
        ),
        const SizedBox(height: 50),
        OutlinedButton(
            onPressed: rollDice,
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.purple)),
            child: const page1('Go')),
      ],
    );
  }
}
