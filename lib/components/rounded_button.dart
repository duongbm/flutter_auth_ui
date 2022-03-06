import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = primaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 40,
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
