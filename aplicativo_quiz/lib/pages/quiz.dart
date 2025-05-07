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
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text('Pergunta 1 de 10',
                   style: TextStyle( fontSize: 20),
                   
                   ),
                ),
          
                Text('Pergunta', style: TextStyle( fontSize: 20),
                ),
                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromHeight(60),
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                  ),
                  child: Text(
                    'Resposta 1',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
          
                  onPressed: () {
                    print('Clicou Resposta 1');
                  },
                ),
          
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                  ),
                  child: Text(
                    'Resposta 2',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
          
                  onPressed: () {
                    print('Clicou Resposta 2');
                  },
                ),
          
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                  ),
                  child: Text(
                    'Resposta 3',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
          
                  onPressed: () {
                    print('Clicou Resposta 3');
                  },
                ),
          
          
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                  ),
                  child: Text(
                    'Resposta 4',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
          
                  onPressed: () {
                    print('Clicou Resposta  4');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      );
  }
}