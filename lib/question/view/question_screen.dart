import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/end_screen/view/end_screen.dart';
import 'package:quiz_app/question/model/quiz.dart';
import 'package:quiz_app/question/view/widget/choice_button.dart';
import 'package:quiz_app/question/view/widget/custom_button.dart';
import 'package:quiz_app/question/view/widget/quiz_stepper.dart';
import 'package:quiz_app/question/view/widget/timer_widget.dart';
import 'package:quiz_app/question/view_model/question_screen_view_model.dart';

class QuestionScreen extends StatelessWidget {
  static String tag = "/question";

  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionScreenViewModel model = context.watch<QuestionScreenViewModel>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Question",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            QuizStepper(
              totalQuiz: 10,
              currentQuizIndex:
                  context.watch<QuestionScreenViewModel>().currentQuiz,
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
                child: Center(
              child: Text(
                model.allQuiz[model.currentQuiz].question,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            )),
            const SizedBox(
              height: 50,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount:
                    model.allQuiz[model.currentQuiz].answerChoices.length,
                itemBuilder: (context, index) {
                  Answer answer =
                      model.allQuiz[model.currentQuiz].answerChoices[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ChoiceButton(
                      index: index,
                      label: answer.answer,
                      isTrue: answer.isTrue,
                    ),
                  );
                }),
            const TimerWidget(timer: Duration(seconds: 3)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: CustomButton(
                        label: "PREV", borderColor: Themes.purpleBg),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: CustomButton(
                        label: "SKIP", borderColor: Themes.purpleBg),
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, EndScreen.tag);
                },
                label: "CONFIRM",
                borderColor: Themes.purpleBg,
                fillColor: Themes.purpleBg,
                textColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
