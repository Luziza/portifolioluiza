import 'package:flutter/material.dart';
import 'package:responsive_styles/breakpoints/breakpoints.dart';
import 'package:responsive_styles/responsive/responsive.dart';

class Resumo extends StatelessWidget {
  const Resumo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Container(
        child: context.responsive.value({
          Breakpoints.xs: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: constraints.maxHeight * 0.6,
                    ),
                    child: const Column(
                      children: [
                        Text(
                          'LUIZA DE FARIA BASTOS RIBEIRO',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 42, 151, 51),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Desenvolvedora de software, front-end e mobile'),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Estudante de 21 anos, graduanda do curso de Bacharelado de Sistemas de Informação. Uma profissional dedicada e versátil, com facilidade para aprender e se adaptar a novas tecnologias, linguagens de programação e sistemas, buscando sempre ampliar conhecimentos e contribuir para o sucesso da equipe.',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/imagens/LuizaDeFariaBastosRibeiro.jpg',
                    ),
                  ),
                ],
              );
            },
          ),
          
          Breakpoints.lg: Row(
            children: [
              const Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      'LUIZA DE FARIA BASTOS RIBEIRO',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 42, 151, 51),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Desenvolvedora de software, front-end e mobile'),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        'Estudante de 21 anos, graduanda do curso de Bacharelado de Sistemas de Informação. Uma profissional dedicada e versátil, com facilidade para aprender e se adaptar a novas tecnologias, linguagens de programação e sistemas, buscando sempre ampliar conhecimentos e contribuir para o sucesso da equipe.',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 40),
              Flexible(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/imagens/LuizaDeFariaBastosRibeiro.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        }),
      ),
    );
  }
}
