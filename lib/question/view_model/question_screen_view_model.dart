import 'package:flutter/cupertino.dart';

import '../model/quiz.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  List<Quiz> allQuiz = [
    Quiz(question: "1+1", answerChoices: [
      Answer(answer: "4", isTrue: false),
      Answer(answer: "3", isTrue: false),
      Answer(answer: "2", isTrue: true),
    ]),
    Quiz(question: "Ibukota Jawa Timur?", answerChoices: [
      Answer(answer: "Surabaya", isTrue: true),
      Answer(answer: "Semarang", isTrue: false),
      Answer(answer: "Solo", isTrue: false),
    ]),
    Quiz(question: "10 + 10?", answerChoices: [
      Answer(answer: "21", isTrue: false),
      Answer(answer: "20", isTrue: true),
      Answer(answer: "23", isTrue: false),
    ]),
  ];

  int _currentQuiz = 0;

  int get currentQuiz => _currentQuiz;

  set currentQuiz(int val) {
    _currentQuiz = val;
    notifyListeners();
  }

  //0 = belum dijawab
  //1 = sudah dijawab
  List<int> _quizStatus = [0, 0, 0];

  List<int> get quizStatus => _quizStatus;

  set quizStatus(List<int> val) {
    _quizStatus = val;
    notifyListeners();
  }
}
