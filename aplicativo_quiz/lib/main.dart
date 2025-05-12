import 'package:aplicativo_quiz/pages/home_page.dart';
import 'package:aplicativo_quiz/pages/quiz.dart';
import 'package:aplicativo_quiz/pages/resultado.dart';
import 'package:flutter/material.dart';

void main() {
<<<<<<< Updated upstream
  runApp(MyApp());
=======
  runApp(HomePage());
>>>>>>> Stashed changes
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        'Quiz' : (context) => Quiz(),
        Resultado.routeName : (context) => Resultado(),
      },
    );
  }
}


