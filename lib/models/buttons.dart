import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Color buttonColor;
  final String buttonName;
  final VoidCallback onClicked;
  const Buttons({
    super.key,
    required this.buttonColor,
    required this.buttonName,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClicked,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      child: Text(buttonName,
          style: TextStyle(
            color: buttonColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          )),
    );
  }
}
