import 'package:flutter/material.dart';

class telaDois extends StatefulWidget {
  const telaDois({super.key});

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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/papel.png", height: 150
          ),
          const SizedBox(height: 10),

          const Text("Escola do APP", style: TextStyle( fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          const Text("Sua escolha", style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const Text(
            "Você perdeu/venceu",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: const Text("Jogar novamente"),
          )
        ],
      ),
    );
  }
}