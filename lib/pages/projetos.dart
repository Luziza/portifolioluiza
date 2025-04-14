import 'package:flutter/material.dart';
import 'package:portifolio/widgets/link.dart';
import 'package:responsive_styles/breakpoints/breakpoints.dart';
import 'package:responsive_styles/responsive/responsive.dart';

class Projetos extends StatelessWidget {
  const Projetos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80),
      child: Column(
        children: [
          const Text(
            'PROJETOS',
            style: TextStyle(
                color: Color.fromARGB(255, 42, 151, 51),
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
              child: context.responsive.value({
                Breakpoints.xs: LayoutBuilder(builder: (context, constraints) {
              return const Column(
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Portal da Soliedariedade',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              'Projeto da minha bolsa de extensão, que foi a criação do web site "Portal da Solidariedade", uma ferramenta que visa ajudar a comunidade de Araquari a oferecer serviços na época de pandemia, por conta da falta de emprego consequente da pandemia, trabalhadores poderiam oferecer serviços independentes diretamente no web site.'),
                          Text('Foi utilizado Django e Vue.js'),
                          Link(
                            link:
                                'https://revistas.ufpr.br/extensao/article/view/86235',
                            nome:
                                "Construindo o “Portal da solidariedade”: Dilemas e desafios da extensão durante a pandemia de Covid-19",
                            cor: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dkoser Aviamentos',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              'Web Site criado para facilitar os pedido dos clientes na loja de meu pai, onde é disponibilizado a ele . Os itens são inclusos no carrinho de compra e ao finalizar a compra, os itens são enviado pelo Whatsapp para que meu pai possa realizar o pedido do cliente. Está em andamento.'),
                          Text(
                              'Foi utilizado Flutter como linguagem principal e o firabase como banco de dados e locação na web'),
                          Link(
                            link: "https://lojapaidkoser.web.app/",
                            nome: "D'koser Aviamentos",
                            cor: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Catálogo',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              'Contribui na empresa que trabalhei (TopSystem) com um aplicativo mobile de catálogo de produtos a venda pelos cliente utilizando a nuvem AWS. Uma ferramenta em que os clientes faziam upload de uma pasta de imagens ou apenas de uma imagem individual e elas subiam para a nuvem AWS. Essas imagens eram carregadas no aplicativo.'),
                          Text(
                              'Foi utilizado Flutter como linguagem principal'),
                        ],
                      ),
                    ),
                  ),
                ],
              );
                }
                ),
            Breakpoints.lg: LayoutBuilder(builder: (context, constraints) {
              return const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Portal da Soliedariedade',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                                'Projeto da minha bolsa de extensão, que foi a criação do web site "Portal da Solidariedade", uma ferramenta que visa ajudar a comunidade de Araquari a oferecer serviços na época de pandemia, por conta da falta de emprego consequente da pandemia, trabalhadores poderiam oferecer serviços independentes diretamente no web site.'),
                            Text('Foi utilizado Django e Vue.js'),
                            Link(
                              link:
                                  'https://revistas.ufpr.br/extensao/article/view/86235',
                              nome:
                                  "Construindo o “Portal da solidariedade”: Dilemas e desafios da extensão durante a pandemia de Covid-19",
                              cor: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dkoser Aviamentos',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                                'Web Site criado para facilitar os pedido dos clientes na loja de meu pai, onde é disponibilizado a ele . Os itens são inclusos no carrinho de compra e ao finalizar a compra, os itens são enviado pelo Whatsapp para que meu pai possa realizar o pedido do cliente. Está em andamento.'),
                            Text(
                                'Foi utilizado Flutter como linguagem principal e o firabase como banco de dados e locação na web'),
                            Link(
                              link: "https://lojapaidkoser.web.app/",
                              nome: "D'koser Aviamentos",
                              cor: Colors.blue,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Catálogo',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                                'Contribui na empresa que trabalhei (TopSystem) com um aplicativo mobile de catálogo de produtos a venda pelos cliente utilizando a nuvem AWS. Uma ferramenta em que os clientes faziam upload de uma pasta de imagens ou apenas de uma imagem individual e elas subiam para a nuvem AWS. Essas imagens eram carregadas no aplicativo.'),
                            Text(
                                'Foi utilizado Flutter como linguagem principal'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            })
          }))
        ],
      ),
    );
  }
}
