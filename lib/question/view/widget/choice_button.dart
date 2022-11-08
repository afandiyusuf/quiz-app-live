import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class ChoiceButton extends StatelessWidget {
  final String label;
  final bool isTrue;
  final int index;
  final Function onTap;
  final Color borderColor;
  final Color? fillColor;
  final TextStyle labelStyle;

  const ChoiceButton(
      {Key? key,
      this.fillColor,
      required this.onTap,
      required this.label,
      required this.isTrue,
      required this.borderColor,
      required this.labelStyle,
      required this.index})
      : super(key: key);

  String _convertIndexToString(int index) {
    switch (index) {
      case 0:
        return "A";
      case 1:
        return "B";
      default:
        return "C";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: fillColor,
              border: Border.all(color: borderColor)),
          width: double.infinity,
          child: Center(
              child: Text(
            "${_convertIndexToString(index)}.$label",
            style:labelStyle,
          )),
        ),
      ),
    );
  }
}
