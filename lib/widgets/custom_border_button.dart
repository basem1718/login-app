import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  CustomOutlineButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.textColor,
      this.color});
  final String text;
  final void Function()? onPressed;
  final Color? textColor;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      height: 48,
      minWidth: 311,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            width: 1,
            color: Color(0xff45A2CF),
          )),
      textColor: textColor,
      splashColor: Color(0xff45A2CF),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
