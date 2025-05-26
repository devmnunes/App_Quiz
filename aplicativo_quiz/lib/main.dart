import 'package:aplicativo_quiz/domain/quiz_logic.dart';
import 'package:aplicativo_quiz/pages/home_page.dart';
import 'package:aplicativo_quiz/pages/quiz.dart';
import 'package:aplicativo_quiz/pages/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        'Quiz' : (context) => Quiz(),
        Resultado.routeName : (context) => Resultado(),
      },
    );
  }
}


