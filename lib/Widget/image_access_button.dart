import 'package:flutter/material.dart';
import '../Constants/Color_constant.dart';
import '../Constants/style_constant.dart';

class ImageAccessButton extends StatelessWidget {
  String text;
  VoidCallback onPress;
  ImageAccessButton({required this.text, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 15, right: 15, left: 15),
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: color_text,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            text,
            style: style_3.copyWith(color: color_background, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
