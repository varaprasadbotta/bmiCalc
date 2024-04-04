import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class RoundButtons extends StatelessWidget {

//   RoundButtons({super.key, required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       child: FaIcon(
//         icon,
//         color: Colors.white,
//       ),
//       decoration: BoxDecoration(
//         color: Color(0xFF21244D),
//         borderRadius: BorderRadius.circular(50),
//         // shape: BoxShape.circle
//       ),
//     );
//   }
// }

class RoundButtons extends StatelessWidget {
  IconData icon;
  void Function()? onPressed;
  RoundButtons({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: FaIcon(icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    );
  }
}
