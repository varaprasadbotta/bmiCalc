import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cardtext extends StatelessWidget {
  dynamic icon;
  void Function()? onTap;
  var text;
  Color colour;
  Cardtext(
      {super.key,
      required this.icon,
      @required this.text,
      this.onTap,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: colour,
            size: 90,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white),
          )
        ],
      ),
    );
  }
}
//