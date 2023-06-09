import 'package:flutter/material.dart';
import 'package:project/Respota.dart';
import 'package:project/Resultado.dart';
import 'Pergunta.dart';
import 'Respota.dart';
import 'Questionario.dart';

void main() {
  runApp(const AppPergunta());
}

class AppPergunta extends StatefulWidget {
  const AppPergunta({super.key});

  @override
  State<AppPergunta> createState() => _AppPerguntaState();
}

class _AppPerguntaState extends State<AppPergunta> {
  var alternativa = 0;
  var pontuacaoFinal = 0;

  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'quanto é 1 +1',
      'resposta': [
        {'text': '2', 'pontuacao': 10},
        {'text': '5', 'pontuacao': 5},
        {'text': '3', 'pontuacao': 3},
        {'text': '1', 'pontuacao': 0}
      ]
    },
    {
      'texto': 'quanto é 2 +2',
      'resposta': [
        {'text': '4', 'pontuacao': 10},
        {'text': '5', 'pontuacao': 5},
        {'text': '3', 'pontuacao': 3},
        {'text': '1', 'pontuacao': 0}
      ]
    },
    {
      'texto': 'quanto é 3 +3',
      'resposta': [
        {'text': '2', 'pontuacao': 3},
        {'text': '5', 'pontuacao': 5},
        {'text': '6', 'pontuacao': 10},
        {'text': '1', 'pontuacao': 0}
      ]
    },
  ];

  void responder(int pontuacao) {
    setState(() {
      alternativa++;
      pontuacaoFinal += pontuacao;
    });
  }

  void ReniciarFormulario() {
    setState(() {
      alternativa = 0;
      pontuacaoFinal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("GALUFA")),
        ),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          child: Questionario(
            alternativa: alternativa,
            listaPergunta: perguntas,
            responder: responder,
            pontuacaoFinal: pontuacaoFinal,
            reniciar: ReniciarFormulario,
          ),
        ),
      ),
    );
  }
}
