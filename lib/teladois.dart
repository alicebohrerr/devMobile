import 'package:flutter/material.dart';

class telaDois extends StatefulWidget {
  final String escolhaApp;
  final String escolhaUsuario;
  final String resultado;

  const telaDois({
    super.key,
    required this.escolhaApp,
    required this.escolhaUsuario,
    required this.resultado,
  });

  @override
  State<telaDois> createState() => _teladoisState();
}

class _teladoisState extends State<telaDois> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedra, Papel, Tesoura"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Escolha do APP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 10),

            Image.asset(
              "images/${widget.escolhaApp}.png",
              height: 120,
            ),

            const SizedBox(height: 30),

            const Text(
              "Sua escolha",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 10),

            Image.asset(
              "images/${widget.escolhaUsuario}.png",
              height: 120,
            ),

            const SizedBox(height: 30),

            Text(
              widget.resultado,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
              child: const Text(
                "Jogar novamente",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}