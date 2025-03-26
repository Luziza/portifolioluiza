import 'package:flutter/material.dart';
import 'package:portifolio/pages/certificados.dart';
import 'package:portifolio/pages/conhecimento.dart';
import 'package:portifolio/pages/contato.dart';
import 'package:portifolio/pages/experiencia.dart';
import 'package:portifolio/pages/formacao.dart';
import 'package:portifolio/pages/projetos.dart';
import 'package:portifolio/pages/resumo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 41, 41),
        body: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'BigShoulders',
          ),
          child: ListView(
            // Substitua SingleChildScrollView por ListView
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.35,
                    image: AssetImage('assets/imagens/pat.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'LuizaRibeiro',
                              style: TextStyle(
                                color: Color.fromARGB(255, 42, 151, 51),
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Home'),
                                Text('Conhecimentos'),
                                Text('Experiências'),
                                Text('Projetos'),
                                Text('Formação'),
                                Text('Certificados'),
                                Text('Contato'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Resumo(),
                  ],
                ),
              ),
              const Conhecimento(),
              const Experiencia(),
              // const Projetos(),
              const Formacao(),
              const Certificados(),
              const Contato(),
            ],
          ),
        ),
      ),
    );
  }
}
