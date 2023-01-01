import 'package:flutter/material.dart';
import '../Constants/Color_constant.dart';

class Card_data extends StatelessWidget {
  Widget? child;
  Card_data({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: color_border, width: 5),
          color: color_background,
          borderRadius: BorderRadius.circular(15.0)),
      child: child,
    );
  }
}
