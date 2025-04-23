import 'package:flutter/material.dart';
import 'package:portifolio/widgets/link.dart';
import 'package:responsive_styles/breakpoints/breakpoints.dart';
import 'package:responsive_styles/responsive/responsive.dart';

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
        padding: const EdgeInsets.all(80.0),
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
              padding: const EdgeInsets.only(right: 50, left: 50),
              child: Container(
                child: context.responsive.value(
                  {
                    Breakpoints.lg: LayoutBuilder(
                      builder: (context, constraints) {
                        return Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/imagens/email.png'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'ribeiroluiza.jlle@gmail.com',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/imagens/github.png'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Link(
                                        link: "https://github.com/Luziza",
                                        nome: "GitHub",
                                        cor: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                          'assets/imagens/linkedin.png'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Link(
                                        link:
                                            "https://www.linkedin.com/in/luiza-ribeiro-9ab428236/",
                                        nome: "Linkedin",
                                        cor: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/imagens/link.png',
                                        height: 50,
                                        width: 50,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Link(
                                        link:
                                            "https://drive.google.com/file/d/1IOkXk1NI7hQjQEdQnhSWs7SE84X-IFGL/view?usp=sharing",
                                        nome: "Currículo.",
                                        cor: Colors.white,
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
                                    borderRadius: BorderRadius.circular(
                                        400), // Arredonda a imagem
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
                        );
                      },
                    ),
                    Breakpoints.xs: LayoutBuilder(
                      builder: (context, constraints) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/imagens/email.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'ribeiroluiza.jlle@gmail.com',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/imagens/github.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Link(
                                  link: "https://github.com/Luziza",
                                  nome: "GitHub",
                                  cor: Colors.white,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/imagens/linkedin.png'),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Link(
                                  link:
                                      "https://www.linkedin.com/in/luiza-ribeiro-9ab428236/",
                                  nome: "Linkedin",
                                  cor: Colors.white,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/imagens/link.png',
                                  height: 50,
                                  width: 50,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Link(
                                  link:
                                      "https://drive.google.com/file/d/1IOkXk1NI7hQjQEdQnhSWs7SE84X-IFGL/view?usp=sharing",
                                  nome: "Currículo.",
                                  cor: Colors.white,
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
