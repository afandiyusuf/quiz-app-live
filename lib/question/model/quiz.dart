class Quiz {
  final String question;
  final List<Answer> answerChoices;

  Quiz({required this.question, required this.answerChoices});
}

class Answer {
  final String answer;
  final bool isTrue;

  Answer({required this.answer, required this.isTrue});
}
