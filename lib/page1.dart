import 'package:flutter/material.dart';
class page1 extends StatelessWidget {
  const page1(this.text,{super.key});
  final String text;
  @override
  Widget build(context){
    return Text(
      text,
      style: const TextStyle(
        //backgroundColor: Colors.purpleAccent,
        color: Colors.white,
        fontSize: 27,
      ),
    );
  }
}

