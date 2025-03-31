import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projetos extends StatelessWidget {
  const Projetos({
    super.key,
  });

  Future<void> _launchURL() async {
    final Uri url =
        Uri.parse('https://revistas.ufpr.br/extensao/article/view/86235');
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchURL2() async {
    final Uri url = Uri.parse('https://lojapaidkoser.web.app/');
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80),
      child: Column(
        children: [
          const Text(
            'PROJETOS',
            style: TextStyle(
                color:  Color.fromARGB(255, 42, 151, 51),
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
                        MouseRegion(
                          cursor: SystemMouseCursors.click, // Mão do mouse
                          child: GestureDetector(
                            onTap: _launchURL,
                            child: const Text(
                              "Construindo o “Portal da solidariedade”: Dilemas e desafios da extensão durante a pandemia de Covid-19",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dkoser Aviamentos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                            'Web Site criado para facilitar os pedido dos clientes na loja de meu pai, onde é disponibilizado a ele . Os itens são inclusos no carrinho de compra e ao finalizar a compra, os itens são enviado pelo Whatsapp para que meu pai possa realizar o pedido do cliente. Está em andamento.'),
                        const Text(
                            'Foi utilizado Flutter como linguagem principal e o firabase como banco de dados e locação na web'),
                        MouseRegion(
                          cursor: SystemMouseCursors.click, // Mão do mouse
                          child: GestureDetector(
                            onTap: _launchURL2,
                            child: const Text(
                              "https://lojapaidkoser.web.app/",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                        Text('Foi utilizado Flutter como linguagem principal'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
