import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/elevate_button.dart';

class SignInButton extends ElevatedButtons {
  SignInButton({
    String title,
    Color textColor,
    Color color,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            title,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          color: color,
          onPressed: onPressed,
        );
}
