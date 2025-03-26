import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imagens/cor.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            const Text(
              'FORMAÇÃO',
              style: TextStyle(
                  color: Color.fromARGB(255, 19, 105, 26),
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/imagens/info.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Ensino médio integrado ao curso técnico de informática',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Text('Período: 2019 - 2021'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                            'Ensino médio integrado ao técninco em informática no Instituo Federal Catarinense de Araquari. Tive aprendizado em diversos campos da área de informática, como, desenvolvimento web utilizando Django, python, javascript, html e css, programação orientada a objeto, banco de dados, edição de vídeos e imagens.'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/imagens/grad.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                                'Graduação em Bacharelado em Sistemas de informação', style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        const Text('Período: 2012 - Atualmente'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                            'Graduanda de Bacharelado em Sistemas de informação no Instituto Federal Catarinense de Araquari, com o prazo de finalização em 2026. Estou tendo um aprofundamento nas matérias que já tive no ensino médio, porém, também estou tendo um aprendizado de matérias que irão me ajudar no mercado de trabalho como os métodos ágeis.')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
