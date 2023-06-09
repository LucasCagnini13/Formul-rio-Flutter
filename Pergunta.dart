import 'package:flutter/material.dart';

class Pergunta extends StatelessWidget {
  final String _texto;

  const Pergunta(this._texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        _texto,
        style: const TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
