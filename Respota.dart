import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final void Function() funcao;

  const Resposta(this._texto, this.funcao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: funcao,
        child: Text(_texto),
      ),
    );
  }
}
