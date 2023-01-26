import 'question/model/quiz.dart';

var bankQuiz = [
  Quiz(
      question: "Buah apakah ini?",
      imageUrl: "assets/quiz_images/apel.png",
      answerChoices: [
        Answer(answer: "Anggur", isTrue: false),
        Answer(answer: "Apel", isTrue: true),
        Answer(answer: "Semangka", isTrue: false),
      ]),
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
