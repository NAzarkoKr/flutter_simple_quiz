import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  });
}

class QuestionData {
  final data = [
    Question(title: 'How are you?', answers: [
      {'answer': '1', 'isCorect': 1},
      {'answer': '1'},
      {'answer': '1'},
      {'answer': '1'},
    ]),
    Question(title: 'How are you 2 ?', answers: [
      {'answer': '1', 'isCorect': 1},
      {'answer': '1'},
      {'answer': '1'},
      {'answer': '1'},
    ]),
    Question(title: 'How are you 3?', answers: [
      {'answer': '1', 'isCorect': 1},
      {'answer': '1'},
      {'answer': '1'},
      {'answer': '1'},
    ]),
    Question(title: 'How are you 4?', answers: [
      {'answer': '1', 'isCorect': 1},
      {'answer': '1'},
      {'answer': '1'},
      {'answer': '1'},
    ]),
    Question(title: 'How are you 5?', answers: [
      {'answer': '1', 'isCorect': 1},
      {'answer': '1'},
      {'answer': '1'},
      {'answer': '1'},
    ]),
  ];
  List<Question> get questions => [...data];
}
