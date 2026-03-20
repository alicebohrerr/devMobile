import 'package:flutter/material.dart';

class telaum extends StatefulWidget {
  const telaum({super.key});

  @override
  State<telaum> createState() => _telaumState();
}

class _telaumState extends State<telaum> {
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
          Image.asset("images/padrao.png",
              height: 150
          ),

          const SizedBox(height: 10),

          const Text("Escolha do APP", style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/pedra.png", height: 60),
              Image.asset("images/papel.png", height: 60),
              Image.asset("images/tesoura.png", height: 60),

            ],
          )
        ],
      ),
    );
  }
}