import 'package:flutter/material.dart';
import 'package:portifolio/widgets/container.dart';

class Conhecimento extends StatelessWidget {
  const Conhecimento({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(80.0),
      child: Column(
        children: [
          Text(
            'CONHECIMENTOS',
            style: TextStyle(
                color:  Color.fromARGB(255, 42, 151, 51),
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          // const SizedBox(
          //   height: 100,
          // ),
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Caixa(
                        nome: 'Flutter', imagem: 'assets/imagens/flutter.png'),
                    Caixa(nome: 'Dart', imagem: 'assets/imagens/dart.png'),
                    Caixa(nome: 'Python', imagem: 'assets/imagens/python.png'),
                    Caixa(nome: 'Django', imagem: 'assets/imagens/django.png'),
                    Caixa(nome: 'HTML', imagem: 'assets/imagens/html.png'),
                    Caixa(nome: 'GitHub', imagem: 'assets/imagens/github.png'),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Caixa(nome: 'Javascript', imagem: 'assets/imagens/js.png'),
                    Caixa(nome: 'CSS', imagem: 'assets/imagens/css.png'),
                    Caixa(nome: 'SQL', imagem: 'assets/imagens/sql.png'),
                    Caixa(
                        nome: 'Inglês intermediário',
                        imagem: 'assets/imagens/ingles.png'),
                    Caixa(nome: 'Git', imagem: 'assets/imagens/git.png'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
