import 'package:flutter/material.dart';

class Conhecimento extends StatelessWidget {
  const Conhecimento({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Column(
        children: [
          const Text(
            'CONHECIMENTOS',
            style: TextStyle(
                color: Color.fromARGB(255, 19, 105, 26),
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          // const SizedBox(
          //   height: 100,
          // ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/imagens/desenvolvimento.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Desenvolvimento de Software',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'Experiencia de 2 anos em Dart. Conhecimento em Python, Django, Git e GitHub, Javascript e métodos ágeis.'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/imagens/frontend.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Front-End e Mobile'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'Experiencia de 2 anos com desenvolvimento em Flutter. Conhecimento ta,bém em HTML, CSS e JS')
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/imagens/bandodedados.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Banco de Dados'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Conhecimento em SQL e banco de dados Oracle'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
