import 'package:flutter/material.dart';
import 'package:quiz/widgets/answear.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswear;
  Quiz({Key key, this.index, this.questionData, this.onChangeAnswear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            questionData.questions[index].title,
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        ...questionData.questions[index].answers
            .map((e) => Answear(
                  title: e['answer'],
                  onChangeAnswear: onChangeAnswear,
                  isCorrect: e.containsKey('isCorect') ? true : false,
                ))
            .toList(),
      ],
    );
  }
}
