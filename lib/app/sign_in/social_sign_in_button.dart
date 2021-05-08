import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/elevate_button.dart';

class SocialSignInButton extends ElevatedButtons {
  SocialSignInButton({
    @required String assetName,
    String title,
    Color textColor,
    Color color,
    VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                  opacity: 0,
                  child: Image.asset(assetName)),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
