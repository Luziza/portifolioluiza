import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String cargo;
  final String data;
  final String resumo;
  final String imagem;
  final String empresa;
  final String local;
  const Drop({
    super.key,
    required this.cargo,
    required this.data,
    required this.resumo,
    required this.imagem,
    required this.empresa,
    required this.local,
  });

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  bool isContainerVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isContainerVisible =
                  !isContainerVisible; // Alterna a visibilidade
            });
          },
          child: Container(
            decoration: const BoxDecoration(
              color:Color.fromARGB(255, 25, 87, 30),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.cargo),
                  Text(widget.data),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isContainerVisible =
                            !isContainerVisible; // Alterna a visibilidade
                      });
                    },
                    icon: Icon(isContainerVisible
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down, color: Colors.white,)
                  )
                ],
              ),
            ),
          ),
        ),

        // Container que aparece ao clicar no botão
        if (isContainerVisible)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 25, 87, 30),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        widget.empresa,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/imagens/local.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(widget.local),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget.resumo,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          widget.imagem,
                          height: 90,
                          width: 90,
                        )),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
