import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/question/presetation/widget/quiz_stepper.dart';

class QuestionScreen extends StatelessWidget {
  static String tag = "/question";

  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: Icon(
          Icons.arrow_back,
          color: Themes.purpleBg,
        ),
        title: Center(
          child: Text(
            "Question",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [QuizStepper()],
        ),
      ),
    );
  }
}
