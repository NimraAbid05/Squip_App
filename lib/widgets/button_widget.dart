import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../utils/textConstraint.dart';

class CustomButton extends StatelessWidget {
   String? title;
 
  VoidCallback? onTap;
  CustomButton({this.title,this.onTap,super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("$title", style: TextConstraint.buttontext),
      onPressed: onTap,
      // onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        minimumSize: MaterialStateProperty.all<Size>(Size(250, 80)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
