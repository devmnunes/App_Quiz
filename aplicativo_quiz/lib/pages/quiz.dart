import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: const Color.fromARGB(255, 5, 104, 185)),
        scaffoldBackgroundColor: const Color.fromARGB(221, 226, 236, 236),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Meu app',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                ),
                child: Text(
                  'Iniciar',
                  style: TextStyle(fontSize: 43, color: Colors.white),
                ),

                onPressed: () {
                  print('Clicou Iniciar');
                },
              ),
            ],
          ),
        ),
      ),
      );
  }
}