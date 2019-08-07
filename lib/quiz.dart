import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget{
  final q;
  final aq;
  final qi;

  Quiz({this.q,this.aq,this.qi});


  @override
  Widget build(BuildContext context) {
    
    return Column(
                children: [
                  Question(q[qi]["q"]),
                  ...(q[qi]["a"] as List<String>)
                      .map((x) => Answer(x, aq))
                      .toList(),
                ],
              );
  }

}