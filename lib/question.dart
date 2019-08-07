import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qt;
  Question(this.qt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsets.all(16),
      child: Text(
        qt,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
 