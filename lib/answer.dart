import 'package:flutter/material.dart';


class Answer extends StatelessWidget{
  final Function sh;
  final String txt;

  Answer(this.txt,this.sh);

  @override
  Widget build(BuildContext context) {
    
    return Container(
        width:double.infinity,
        child:RaisedButton(
              color:Colors.blueAccent,
              child: Text(txt),
              onPressed: sh,
            ),
    );
  }

}