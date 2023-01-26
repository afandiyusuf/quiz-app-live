import 'package:flutter/cupertino.dart';
import 'package:quiz_app/bank_quiz.dart';

import '../model/quiz.dart';

class QuestionScreenViewModel extends ChangeNotifier {
  List<Quiz> allQuiz = bankQuiz;

  bool allQuestionsAnswered() {
    bool allAnswered = true;
    for (int i = 0; i < _answerStatus.length; i++) {
      if (_answerStatus[i] != 2) {
        allAnswered = false;
      }
    }
    return allAnswered;
  }

  int _currentQuiz = 0;

  int get currentQuiz => _currentQuiz;

  set currentQuiz(int val) {
    _currentQuiz = val;
    notifyListeners();
  }

  bool _isLastQuiz = false;

  bool get isLastQuiz => _isLastQuiz;
  bool _isFirstQuiz = true;

  bool get isFirstQuiz => _isFirstQuiz;

  //store user answer index,
  List<int?> _quizAnswer = List<int?>.from(bankQuiz.map((e) => null));

  List<int?> get quizAnswer => _quizAnswer;

  set(List<int?> val) {
    _quizAnswer = val;
    notifyListeners();
  }

  // 0 = idle
  // 1 = answer - not confirmed;
  // 2 = answer - final;
  List<int> _answerStatus = List<int>.from(bankQuiz.map((e) => 0));

  List<int> get answerStatus => _answerStatus;

  set answerStatus(List<int> val) {
    _answerStatus = val;
    notifyListeners();
  }

  //0 = belum dijawab
  //1 = sudah dijawab
  List<int> _quizStatus = List<int>.from(bankQuiz.map((e) => 0));

  List<int> get quizStatus => _quizStatus;

  set quizStatus(List<int> val) {
    _quizStatus = val;
    notifyListeners();
  }

  void next() {
    print(answerStatus);
    _isFirstQuiz = false;
    if (_currentQuiz >= allQuiz.length - 1) {
      _isLastQuiz = true;

      return;
    }
    _isLastQuiz = false;
    _currentQuiz++;
    if (_currentQuiz >= allQuiz.length - 1) {
      _isLastQuiz = true;
    }
    notifyListeners();
  }

  void prev() {
    _isLastQuiz = false;
    if (_currentQuiz == 0) {
      return;
    }
    _isFirstQuiz = false;
    _currentQuiz--;
    if (_currentQuiz == 0) {
      _isFirstQuiz = true;
    }
    notifyListeners();
  }

  void answer(int quizIndex, int answerIndex) {
    if (_answerStatus[quizIndex] == 2) {
      print("GAK BISA GANTI JAWABAN");
      return;
    }
    _answerStatus[quizIndex] = 1;
    _quizAnswer[quizIndex] = answerIndex;
    notifyListeners();
  }

  int confirmAnswer(int quizIndex) {
    if (allQuestionsAnswered()) {
      calculateResult();
      return 99;
    }
    if (_answerStatus[quizIndex] != 1) {
      print("BELUM PILIH JAWABAN");
      return 0;
    }
    _answerStatus[quizIndex] = 2;
    _quizStatus[quizIndex] = 1;
    // next();
    notifyListeners();
    return 0;
  }

  int _correctAnswer = 0;

  int get correctAnswer => _correctAnswer;

  set correctAnswer(int val) {
    _correctAnswer = val;
    notifyListeners();
  }

  int _totalQuiz = 0;

  int get totalQuiz => _totalQuiz;

  set totalQuiz(int val) {
    _totalQuiz = val;
    notifyListeners();
  }

  void calculateResult() {
    totalQuiz = allQuiz.length;
    for (int i = 0; i < allQuiz.length; i++) {
      int? userAnswer = quizAnswer[i];
      if (userAnswer != null) {
        if (allQuiz[i].answerChoices[userAnswer].isTrue) {
          correctAnswer++;
        }
      }
    }
    notifyListeners();
  }
}
