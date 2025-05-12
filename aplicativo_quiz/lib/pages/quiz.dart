import 'package:aplicativo_quiz/pages/resultado.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo_quiz/quiz_dados.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {
  

    print('Dados do Quiz');

     void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]["Alternativa_correta"] == respostaNumero) {
          print('Acertou');
          acertos++;
        } else {
          print('Errou');
          erros++;
        }

        print('acertos totais: $acertos \n erros totais: $erros');

        if (perguntaNumero == 10) {
          print('Terminou o quiz');
          Navigator.pushNamed(context, 'Resultado', arguments: Argumentos(acertos));
        } else {
          perguntaNumero++;
        }
      });
    } 

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: const Color.fromARGB(255, 5, 104, 185)),
        scaffoldBackgroundColor: const Color.fromARGB(221, 226, 236, 236),
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 33,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'Quiz Dart e Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Pergunta $perguntaNumero de 10',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              Text(
                quiz[perguntaNumero - 1]["Pergunta"],
                style: TextStyle(fontSize: 20),
              ),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                  ),
                  child: Text(
                    quiz[perguntaNumero - 1]["Alternativas"][0],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),

                  onPressed: () {
                    print('Clicou Resposta 1');
                    respondeu(1);
                  },
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                  ),
                  child: Text(
                    quiz[perguntaNumero - 1]["Alternativas"][1],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),

                  onPressed: () {
                    print('Clicou Resposta 2');
                    respondeu(2);
                  },
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                  ),
                  child: Text(
                    quiz[perguntaNumero - 1]["Alternativas"][2],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),

                  onPressed: () {
                    print('Clicou Resposta 3');
                    respondeu(3);
                  },
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                  ),
                  child: Text(
                    quiz[perguntaNumero - 1]["Alternativas"][3],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),

                  onPressed: () {
                    print('Clicou Resposta  4');
                    respondeu(4);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
