import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                color: Color.fromARGB(255, 19, 105, 26),
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Portal da Soliedariedade',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const Text(
                              'Projeto da minha bolsa de extensão, que foi a criação do web site "Portal da Solidariedade", uma ferramenta que visa ajudar a comunidade de Araquari a oferecer serviços na época de pandemia, por conta da falta de emprego consequente da pandemia, trabalhadores poderiam oferecer serviços independentes diretamente no web site.'),
                          const Text('Foi utilizado Django e Vue.js'),
                          const Text(
                              'https://revistas.ufpr.br/extensao/article/view/86235')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Expanded(
                flex: 1,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dkoser Aviamentos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                            'Web Site criado para facilitar os pedido dos clientes na loja de meu pai. Os itens são inclusos no carrinho de compra e ao finalizar a compra, os itens são enviado pelo Whatsapp para que meu pai possa realizar o pedido do cliente. Ainda está em andamento.'),
                        Text(
                            'Foi utilizado Flutter como linguagem principal e o firabase como banco de dados e locação na web'),
                        Text('https://lojapaidkoser.web.app/')
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
