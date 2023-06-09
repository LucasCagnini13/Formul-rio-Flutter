import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int _pontuacao;
  final void Function() reniciar;

  const Resultado(this._pontuacao, this.reniciar, {super.key});

  get mostrarPontuacao {
    if (_pontuacao <= 8) {
      return 'tente melhorar1';
    } else if (_pontuacao <= 12) {
      return "está no caminho";
    } else if (_pontuacao <= 16) {
      return "Bom";
    } else if (_pontuacao <= 24) {
      return "impressionante";
    } else {
      return "VOCÊ É FERA";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mostrarPontuacao,
            style: const TextStyle(fontSize: 40, color: Colors.green),
          ),
          Text(
            "Sua pontuação é $_pontuacao",
            style: const TextStyle(fontSize: 22, color: Colors.blueGrey),
          ),
          TextButton(
            onPressed: reniciar,
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: const Text(
              "Reniciar",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
