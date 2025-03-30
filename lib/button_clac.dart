import 'package:flutter/material.dart';

Widget buttonCalc({
  required String textBtn,
  required Color color,
  required Color textColor,
  required VoidCallback onPressed,
  bool isZero = false,
}) {
  return Container(
    height: 80,
    width: isZero ? 172 : 80,
    margin: EdgeInsets.all(4),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: onPressed,
        child: Center(
          child: Text(
            textBtn,
            style: TextStyle(
              color: textColor,
              fontSize: 32,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    ),
  );
}
