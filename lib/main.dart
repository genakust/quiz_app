import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page.dart';

main(List<String> args) {
  runApp(AppFavoriteImage());
}

/// it shows favorite image with extras
class AppFavoriteImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample app",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(), //PersonWidget(),
    );
  }
}
