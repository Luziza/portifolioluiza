import 'package:flutter/material.dart';

class Caixa extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String nome;
  final String imagem;

  const Caixa({
    super.key,
    required this.nome,
    required this.imagem,
  });

  @override
  State<Caixa> createState() => _CaixaState();
}

class _CaixaState extends State<Caixa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            color: Color.fromARGB(255, 19, 105, 26),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      widget.imagem,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(widget.nome)
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
