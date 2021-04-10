import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Frage'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Antwort 1'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Antwort 2'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Antwort 3'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Antwort 4'),
          ),
        ],
      ),
    );
  }
}
