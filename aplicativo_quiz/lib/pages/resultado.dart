import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  final int acertos = 0;

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
              'Quiz Dart e Flutter',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Resultado', style: TextStyle(fontSize: 45)),
                Text(
                  'Você acertou\n $acertos de 10 \n perguntas',
                  style: TextStyle(fontSize: 35),
                ),

                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                    ),
                    child: Text(
                      'Jogar Novamente',
                      style: TextStyle(fontSize: 38, color: Colors.white),
                    ),

                    onPressed: () {
                      //Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
