import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/textConstraint.dart';

class Small_Button extends StatelessWidget {
  String? title;

  VoidCallback? onTap;
  Small_Button({this.title, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("$title", style: TextConstraint.buttontext),
      // onPressed: onPressed,
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
    );
  }
}
