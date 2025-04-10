import 'package:flutter/material.dart';
import 'package:portifolio/widgets/container.dart';
import 'package:responsive_styles/breakpoints/breakpoints.dart';
import 'package:responsive_styles/responsive/responsive.dart';

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
                color: Color.fromARGB(255, 42, 151, 51),
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          const SizedBox(height: 20,),
          Container(
            child: context.responsive.value(
              {
                Breakpoints.xs: LayoutBuilder(
                  builder: (context, constraints) {
                    return const Column(
                      children: [
                        Column(
                          children: [
                            Caixa(
                                nome: 'Flutter',
                                imagem: 'assets/imagens/flutter.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'Dart',
                                imagem: 'assets/imagens/dart.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'Python',
                                imagem: 'assets/imagens/python.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'Django',
                                imagem: 'assets/imagens/django.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'HTML',
                                imagem: 'assets/imagens/html.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'GitHub',
                                imagem: 'assets/imagens/github.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'Javascript',
                                imagem: 'assets/imagens/js.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'CSS',
                                imagem: 'assets/imagens/css.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'SQL',
                                imagem: 'assets/imagens/sql.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'Inglês intermediário',
                                imagem: 'assets/imagens/ingles.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'Git',
                                imagem: 'assets/imagens/git.png'),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
                Breakpoints.md: LayoutBuilder(
                  builder: (context, constraints) {
                    return const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          Caixa(
                              nome: 'Flutter',
                              imagem: 'assets/imagens/flutter.png'),
                          SizedBox(
                            height: 5,
                          ),
                          Caixa(
                              nome: 'Dart',
                              imagem: 'assets/imagens/dart.png'),
                          SizedBox(
                            height: 5,
                          ),
                          Caixa(
                              nome: 'Python',
                              imagem: 'assets/imagens/python.png'),
                          SizedBox(
                            height: 5,
                          ),
                          Caixa(
                              nome: 'Django',
                              imagem: 'assets/imagens/django.png'),
                          SizedBox(
                            height: 5,
                          ),
                          Caixa(
                              nome: 'HTML',
                              imagem: 'assets/imagens/html.png'),
                          SizedBox(
                            height: 5,
                          ),
                          Caixa(
                                nome: 'GitHub',
                                imagem: 'assets/imagens/github.png'),
          
                        ]),
                        Column(
                          children: [
                            
                            Caixa(
                                nome: 'Javascript',
                                imagem: 'assets/imagens/js.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'CSS',
                                imagem: 'assets/imagens/css.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'SQL',
                                imagem: 'assets/imagens/sql.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'Inglês intermediário',
                                imagem: 'assets/imagens/ingles.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Caixa(
                                nome: 'Git',
                                imagem: 'assets/imagens/git.png'),
                         
                          ],
                        ),
                      ],
                    );
                  },
                ),
                Breakpoints.lg: LayoutBuilder(
                  builder: (context, constraints) {
                    return const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Caixa(
                                nome: 'Flutter',
                                imagem: 'assets/imagens/flutter.png'),
                            Caixa(
                                nome: 'Dart',
                                imagem: 'assets/imagens/dart.png'),
                            Caixa(
                                nome: 'Python',
                                imagem: 'assets/imagens/python.png'),
                            Caixa(
                                nome: 'Django',
                                imagem: 'assets/imagens/django.png'),
                            Caixa(
                                nome: 'HTML',
                                imagem: 'assets/imagens/html.png'),
                            Caixa(
                                nome: 'GitHub',
                                imagem: 'assets/imagens/github.png'),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Caixa(
                                nome: 'Javascript',
                                imagem: 'assets/imagens/js.png'),
                            Caixa(
                                nome: 'CSS',
                                imagem: 'assets/imagens/css.png'),
                            Caixa(
                                nome: 'SQL',
                                imagem: 'assets/imagens/sql.png'),
                            Caixa(
                                nome: 'Inglês intermediário',
                                imagem: 'assets/imagens/ingles.png'),
                            Caixa(
                                nome: 'Git',
                                imagem: 'assets/imagens/git.png'),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}
