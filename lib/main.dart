import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qi = 0;
  var score =0;
  final q = const [
    {
      "q": "China",
      "a": ["Beijing", "Tokyo", "Phenian", "Seul"],
    },
    {
      "q": "Nepal",
      "a": ["Colombo", "Ulan Bator", "Katmandu", "Seul"],
    },
    {
      "q": "Australia",
      "a": ["Canberra", "Tokyo", "Sidney", "Durban"],
    },
    {
      "q": "Uruguay",
      "a": ["Montevideo", "Buenos Aires", "Caracas", "La Paz"],
    },
  ];

  void aq() {
    setState(() {
      qi++;
    });
    if (qi < q.length)
      print("more");
    else
      print("no more");
  }

  void reset(){
    setState(() {
      qi=0;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("appbar"),
        ),
        body: qi < q.length
            ? Quiz(q:q,qi:qi,aq:aq)
            : Result(reset),
      ),
    );
  }
}
