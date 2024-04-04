import 'package:bmi_calc/Constants/textstyles.dart';
import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Widget child;
  void Function()? onTap;

  ReuseableCard({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: inActiveColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
