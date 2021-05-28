import 'package:flutter/material.dart';
import 'package:time_tracker/widgets/elevate_button.dart';

class FormSubmitButton extends ElevatedButtons {
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          height: 44,
          color: Colors.indigo,
          borderRadius: 4.0,
    onPressed: onPressed,
        );
}
