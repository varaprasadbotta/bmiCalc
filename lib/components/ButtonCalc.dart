import 'package:bmi_calc/Constants/textstyles.dart';
import 'package:flutter/material.dart';

class ButtonCalc extends StatelessWidget {
  var text;
  void Function()? onTap;
  ButtonCalc({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        child: Center(
            child: Text(
          text,
          style: kButtonCalc,
        )),
        decoration: BoxDecoration(
            color: Color(0xFFEA1E63), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
