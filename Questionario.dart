import 'package:flutter/material.dart';
import 'Pergunta.dart';
import 'Respota.dart';
import 'Resultado.dart';

class Questionario extends StatelessWidget {
  final int alternativa;
  final List<Map<String, Object>> listaPergunta;
  final void Function(int) responder;
  final int pontuacaoFinal;
  final void Function() reniciar;

  const Questionario({
    required this.alternativa,
    required this.listaPergunta,
    required this.responder,
    required this.pontuacaoFinal,
    required this.reniciar,
  });

  bool get numeroPergunta {
    return alternativa < listaPergunta.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostasMap = numeroPergunta
        ? listaPergunta[alternativa].cast()['resposta']
            as List<Map<String, Object>>
        : [];

    List<Widget> respostas = respostasMap
        .map((e) => Resposta(e['text'] as String,
            () => responder(int.parse(e['pontuacao'].toString()))))
        .toList();

    return numeroPergunta
        ? Column(children: [
            Pergunta(listaPergunta[alternativa]['texto'].toString()),
            ...respostas
          ])
        : Resultado(pontuacaoFinal, reniciar);
  }
}
