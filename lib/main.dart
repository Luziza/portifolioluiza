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
  // 1. Mova as GlobalKeys para dentro do State
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _conhecimentosKey = GlobalKey();
  final GlobalKey _experienciasKey = GlobalKey();
  final GlobalKey _projetosKey = GlobalKey();
  final GlobalKey _formacaoKey = GlobalKey();
  final GlobalKey _certificadosKey = GlobalKey();
  final GlobalKey _contatosKey = GlobalKey();

  // 2. Função de scroll com tratamento de null
  void _scrollTo(GlobalKey key) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;
      if (context != null && context.mounted) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          alignment: 0.1, // Rola até 10% da parte superior
        );
      }
    });
  }

// Função para criar botões do menu
Widget _menuButton(String text, GlobalKey key) {
  return TextButton(
    onPressed: () => _scrollTo(key),
    child: Text(
      text,
      style: const TextStyle(color: Colors.white),
    ),
  );
}

// Função para criar seções com altura mínima para serem renderizadas corretamente
Widget _section(GlobalKey key, Widget child) {
  return Container(
    key: key,
    constraints: const BoxConstraints(minHeight: 500), // Garante que a seção seja visível
    child: child,
  );
}


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
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
  child: Column(
    children: [
      Container(
        key: _homeKey,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.35,
            image: AssetImage('assets/imagens/pat.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Expanded(
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
                        _menuButton('Home', _homeKey),
                        _menuButton('Conhecimentos', _conhecimentosKey),
                        _menuButton('Experiências', _experienciasKey),
                        _menuButton('Projetos', _projetosKey),
                        _menuButton('Formação', _formacaoKey),
                        _menuButton('Certificados', _certificadosKey),
                        _menuButton('Contato', _contatosKey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Resumo(),
          ],
        ),
      ),
      _section(_conhecimentosKey, const Conhecimento()),
      _section(_experienciasKey, const Experiencia()),
      _section(_projetosKey, const Projetos()),
      _section(_formacaoKey, const Formacao()),
      _section(_certificadosKey, const Certificados()),
      _section(_contatosKey, const Contato()),
    ],
  ),
);

            },
          ),
        ),
      ),
    );
  }
}