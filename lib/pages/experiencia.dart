import 'package:flutter/material.dart';
import 'package:portifolio/widgets/drop.dart';
import 'package:responsive_styles/breakpoints/breakpoints.dart';
import 'package:responsive_styles/responsive/responsive.dart';

class Experiencia extends StatefulWidget {
  const Experiencia({
    super.key,
  });

  @override
  State<Experiencia> createState() => _ExperienciaState();
}

class _ExperienciaState extends State<Experiencia> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: context.responsive.value({
      Breakpoints.xs: LayoutBuilder(
        builder: (context, constraints) {
          return const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'EXPERIENCIA',
                  style: TextStyle(
                      color: Color.fromARGB(255, 42, 151, 51),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 100,
                ),
                Drop(
                  cargo: 'Bolsista de projeto de extensão.',
                  data: '2020 - 2021',
                  empresa: 'Instituto Federal Catarinense',
                  local: 'Araquari',
                  resumo:
                      'Criação do web site "Portal da Solidariedade", uma ferramenta que visa ajudar a comunidade de Araquari a oferecer serviços na época de pandemia, por conta da falta de emprego consequente da pandemia, trabalhadores poderiam oferecer serviços independentes diretamente no web site.',
                  imagem: 'assets/imagens/ifc.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Drop(
                  cargo: 'Estágio de suporte de banco de dados',
                  data: '11/2022 - 02/2023',
                  empresa: 'BySeven',
                  local: 'Joinville',
                  resumo:
                      'Estágio focado no suporte de banco de dados Oracle',
                  imagem: 'assets/imagens/seven.jpeg',
                ),
                SizedBox(
                  height: 10,
                ),
                Drop(
                  cargo: 'Suporte de sistemas                           ',
                  data: '05/2023 - 04/2024',
                  empresa: 'Top System',
                  local: 'Joinville',
                  resumo:
                      'Realizava suporte ao ERP e sistemas mobiles disponibilizado pela empresa',
                  imagem: 'assets/imagens/top.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Drop(
                  cargo: 'Desenvolvedora Jr.                               ',
                  data: '04/2024 - 01/2025',
                  empresa: 'Top System',
                  local: 'Joinville',
                  resumo:
                      'Desenvolvi interfaces de usuário responsivas e interativas utilizando Flutter; Integrei APIs RESTful ao aplicativo, implementando funções para realizar requisições, manipular dados e exibi-los dinamicamente; Implementei o gerenciamento de estado com GetX para assegurar a consistência dos dados e a navegação fluida entre as telas; Otimizei o consumo de dados da API com tratamento de erros e técnicas para melhorar o desempenho, resultando em uma aplicação mais rápida e estável.',
                  imagem: 'assets/imagens/top.png',
                ),
              ],
            ),
          );
        },
      ),
       Breakpoints.md: LayoutBuilder(
        builder: (context, constraints) {
          return const Padding(
            padding: EdgeInsets.only(right: 100, left: 100),
            child: Column(
              children: [
                Text(
                  'EXPERIENCIA',
                  style: TextStyle(
                      color: Color.fromARGB(255, 42, 151, 51),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 100,
                ),
                Drop(
                  cargo: 'Bolsista de projeto de extensão.',
                  data: '2020 - 2021',
                  empresa: 'Instituto Federal Catarinense',
                  local: 'Araquari',
                  resumo:
                      'Criação do web site "Portal da Solidariedade", uma ferramenta que visa ajudar a comunidade de Araquari a oferecer serviços na época de pandemia, por conta da falta de emprego consequente da pandemia, trabalhadores poderiam oferecer serviços independentes diretamente no web site.',
                  imagem: 'assets/imagens/ifc.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Drop(
                  cargo: 'Estágio de suporte de banco de dados',
                  data: '11/2022 - 02/2023',
                  empresa: 'BySeven',
                  local: 'Joinville',
                  resumo:
                      'Estágio focado no suporte de banco de dados Oracle',
                  imagem: 'assets/imagens/seven.jpeg',
                ),
                SizedBox(
                  height: 10,
                ),
                Drop(
                  cargo: 'Suporte de sistemas                           ',
                  data: '05/2023 - 04/2024',
                  empresa: 'Top System',
                  local: 'Joinville',
                  resumo:
                      'Realizava suporte ao ERP e sistemas mobiles disponibilizado pela empresa',
                  imagem: 'assets/imagens/top.png',
                ),
                SizedBox(
                  height: 10,
                ),
                Drop(
                  cargo: 'Desenvolvedora Jr.                               ',
                  data: '04/2024 - 01/2025',
                  empresa: 'Top System',
                  local: 'Joinville',
                  resumo:
                      'Desenvolvi interfaces de usuário responsivas e interativas utilizando Flutter; Integrei APIs RESTful ao aplicativo, implementando funções para realizar requisições, manipular dados e exibi-los dinamicamente; Implementei o gerenciamento de estado com GetX para assegurar a consistência dos dados e a navegação fluida entre as telas; Otimizei o consumo de dados da API com tratamento de erros e técnicas para melhorar o desempenho, resultando em uma aplicação mais rápida e estável.',
                  imagem: 'assets/imagens/top.png',
                ),
              ],
            ),
          );
        },
      ),
      Breakpoints.lg: LayoutBuilder(builder: (context, constraints) {
        return const Padding(
          padding: EdgeInsets.only(right: 200, left: 200),
          child: Column(
            children: [
              Text(
                'EXPERIENCIA',
                style: TextStyle(
                    color: Color.fromARGB(255, 42, 151, 51),
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              SizedBox(
                height: 100,
              ),
              Drop(
                cargo: 'Bolsista de projeto de extensão.',
                data: '2020 - 2021',
                empresa: 'Instituto Federal Catarinense',
                local: 'Araquari',
                resumo:
                    'Criação do web site "Portal da Solidariedade", uma ferramenta que visa ajudar a comunidade de Araquari a oferecer serviços na época de pandemia, por conta da falta de emprego consequente da pandemia, trabalhadores poderiam oferecer serviços independentes diretamente no web site.',
                imagem: 'assets/imagens/ifc.png',
              ),
              SizedBox(
                height: 10,
              ),
              Drop(
                cargo: 'Estágio de suporte de banco de dados',
                data: '11/2022 - 02/2023',
                empresa: 'BySeven',
                local: 'Joinville',
                resumo: 'Estágio focado no suporte de banco de dados Oracle',
                imagem: 'assets/imagens/seven.jpeg',
              ),
              SizedBox(
                height: 10,
              ),
              Drop(
                cargo: 'Suporte de sistemas                           ',
                data: '05/2023 - 04/2024',
                empresa: 'Top System',
                local: 'Joinville',
                resumo:
                    'Realizava suporte ao ERP e sistemas mobiles disponibilizado pela empresa',
                imagem: 'assets/imagens/top.png',
              ),
              SizedBox(
                height: 10,
              ),
              Drop(
                cargo: 'Desenvolvedora Jr.                               ',
                data: '04/2024 - 01/2025',
                empresa: 'Top System',
                local: 'Joinville',
                resumo:
                    'Desenvolvi interfaces de usuário responsivas e interativas utilizando Flutter; Integrei APIs RESTful ao aplicativo, implementando funções para realizar requisições, manipular dados e exibi-los dinamicamente; Implementei o gerenciamento de estado com GetX para assegurar a consistência dos dados e a navegação fluida entre as telas; Otimizei o consumo de dados da API com tratamento de erros e técnicas para melhorar o desempenho, resultando em uma aplicação mais rápida e estável.',
                imagem: 'assets/imagens/top.png',
              ),
            ],
          ),
        );
      })
    }));
  }
}
