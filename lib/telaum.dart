import 'dart:math';
import 'package:flutter/material.dart';
import 'teladois.dart';

class telaum extends StatefulWidget {
  const telaum({super.key});

  @override
  State<telaum> createState() => _telaumState();
}

class _telaumState extends State<telaum> {
  void jogar(String escolhaUsuario) {
    List<String> opcoes = ["pedra", "papel", "tesoura"];
    int numero = Random().nextInt(3);
    String escolhaApp = opcoes[numero];

    String resultado;

    if ((escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
        (escolhaUsuario == "papel" && escolhaApp == "pedra") ||
        (escolhaUsuario == "tesoura" && escolhaApp == "papel")) {
      resultado = "Você venceu!";
    } else if (escolhaUsuario == escolhaApp) {
      resultado = "Empate!";
    } else {
      resultado = "Você perdeu!";
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => telaDois(
          escolhaApp: escolhaApp,
          escolhaUsuario: escolhaUsuario,
          resultado: resultado,
        ),
      ),
    );
  }

  Widget botaoEscolha(String nomeImagem, String escolha) {
    return GestureDetector(
      onTap: () {
        jogar(escolha);
      },
      child: Image.asset(
        "images/$nomeImagem.png",
        height: 80,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedra, Papel, Tesoura"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/padrao.png", height: 150),

          const SizedBox(height: 10),

          const Text(
            "Escolha do APP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 40),

          const Text(
            "Escolha uma opção abaixo:",
            style: TextStyle(fontSize: 18),
          ),

          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              botaoEscolha("pedra", "pedra"),
              botaoEscolha("papel", "papel"),
              botaoEscolha("tesoura", "tesoura"),
            ],
          ),
        ],
      ),
    );
  }
}