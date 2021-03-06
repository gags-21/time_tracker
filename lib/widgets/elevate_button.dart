import 'package:flutter/material.dart';

class ElevatedButtons extends StatelessWidget {
  ElevatedButtons(
      {this.child,
      this.color,
      this.onPressed,
      this.height: 50.0,
      this.borderRadius: 2.0});
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;
  final double height;
  // const ElevatedButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
