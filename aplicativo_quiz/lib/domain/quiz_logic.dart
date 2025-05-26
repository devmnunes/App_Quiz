import 'package:aplicativo_quiz/pages/quiz.dart';
import 'package:aplicativo_quiz/pages/resultado.dart';
import 'package:aplicativo_quiz/quiz_dados.dart';
import 'package:flutter/material.dart';


class Quiz_Logic extends StatelessWidget {
  const Quiz_Logic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class QuizLogic {

  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  QuizLogic.forEach((elemento) {
      int alternativaCorreta = elemento['Alternativa_correta'];
      List resposta = elemento['Alternativas'];

      String respostaCorreta = elemento['Alternativas'][alternativaCorreta - 1];

      resposta.shuffle();

      int i = 1;
      resposta.forEach((elemento) {
        print(elemento);
        if (elemento == respostaCorreta) {
          alternativaCorreta = i;
        }
        i++;  
      });
      elemento["Alternativa_correta"] = alternativaCorreta;
    });
    void respondeu(int respostaNumero) {
      //setState(() {
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
          Navigator.pushNamed(
            context,
            'Resultado',
            arguments: Argumentos(acertos),
          );
        } else {
          perguntaNumero++;
        }
      }
    }