import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/question/view_model/question_screen_view_model.dart';

class QuizStepper extends StatelessWidget {
  final int totalQuiz;
  final int currentQuizIndex;

  const QuizStepper(
      {Key? key, required this.totalQuiz, required this.currentQuizIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10),
      height: 10,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: context.read<QuestionScreenViewModel>().allQuiz.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: (index < currentQuizIndex)
                    ? Themes.orange
                    : index == currentQuizIndex
                        ? Themes.red
                        : Colors.grey,
                borderRadius: BorderRadius.circular(100),
              ),
              margin: EdgeInsets.all(2),
              width: MediaQuery.of(context).size.width / totalQuiz - 10,
              height: 3,
            );
          }),
    );
  }
}
