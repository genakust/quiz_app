import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 50.0,
        vertical: 5.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
            offset: Offset(
              1.0,
              1.0,
            ),
          ),
        ],
        borderRadius: BorderRadius.circular(
          30.0,
        ),
      ),
      child: Text(
        'Answer',
        textAlign: TextAlign.center,
      ),
    );
  }
}
