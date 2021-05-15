import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz'),
      ),
      body: Center(
        child: Column(
          children: [
            Answer(),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
