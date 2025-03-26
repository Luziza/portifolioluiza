import 'package:flutter/material.dart';

class Resumo extends StatelessWidget {
  const Resumo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: Row(
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
                      fontWeight: FontWeight.bold),
                ),
                Text('Desenvolvedora de software, front-end e mobile'),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                      'Estudante de 21 anos, graduanda do curso de Bacharelado de Sistemas de Informação. Uma profissional dedicada e versátil, com facilidade para aprender e se adaptar a novas tecnologias, linguagens de programação e sistemas, buscando sempre ampliar conhecimentos e contribuir para o sucesso da equipe.'),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Arredonda a imagem
              child: Image.asset(
                'assets/imagens/LuizaDeFariaBastosRibeiro.jpg',
                height: 400,
                fit: BoxFit.cover, // Ajusta a imagem ao espaço disponível
              ),
            ),
          ),
        ],
      ),
    );
  }
}
