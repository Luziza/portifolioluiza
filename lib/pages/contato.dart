import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

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
        padding: const EdgeInsets.all(90.0),
        child: Column(
          children: [
            const Text(
              'CONTATOS',
              style: TextStyle(
                  color: Color.fromARGB(255, 19, 105, 26),
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 90, left: 90),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/imagens/email.png'),
                            const SizedBox(width: 10,),
                            const Text(
                              'ribeiroluiza.jlle@gmail.com',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/imagens/github.png'),
                            const SizedBox(width: 10,),
                            const Text(
                              'GitHub',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/imagens/linkedin.png'),
                            const SizedBox(width: 10,),
                            const Text(
                              'Linkedin',
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        )
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
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(400), // Arredonda a imagem
                          child: Image.asset(
                            'assets/imagens/luizaaa.jpg',
                            height: 300,
                            fit: BoxFit
                                .cover, // Ajusta a imagem ao espaço disponível
                          ),
                        ),
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
