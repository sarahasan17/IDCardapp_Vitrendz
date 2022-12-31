import 'package:flutter/material.dart';
import 'Color_constant.dart';

TextStyle style_1 = TextStyle(
    letterSpacing: 2,
    fontSize: 23,
    color: color_text,
    fontWeight: FontWeight.bold);
TextStyle style_2 = TextStyle(
    letterSpacing: 2,
    fontSize: 15,
    fontFamily: 'Lora2',
    color: color_text,
    fontWeight: FontWeight.w400);
TextStyle style_3 =
    TextStyle(fontSize: 15, color: color_text, fontWeight: FontWeight.bold);

const kinputdecoration = InputDecoration(
  hintText: 'Enter your email',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF373F6E), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF4682B4), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
