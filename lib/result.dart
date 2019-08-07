import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final Function reset;

  Result(this.reset);

  @override
  Widget build(BuildContext context) {
    
    return Center(child: Column(
      children: <Widget>[
        Text("finito"),
        FlatButton(child: Text("restart quiz"),
        onPressed: reset,)
      ],
    ),);
  }
}