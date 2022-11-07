import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color? fillColor;
  final Color? textColor;
  final Color borderColor;
  final Function? onPressed;

  const CustomButton(
      {Key? key,
      this.onPressed,
      required this.label,
      this.fillColor,
      this.textColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: fillColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor)),
        width: double.infinity,
        child: Center(
            child: Text(
          label,
          style: TextStyle(
              color: (textColor == null) ? Colors.black : textColor,
              fontSize: 18),
        )),
      ),
    );
  }
}
