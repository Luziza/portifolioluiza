import 'package:flutter/material.dart';
import 'package:portifolio/pages/certificados.dart';
import 'package:portifolio/pages/conhecimento.dart';
import 'package:portifolio/pages/contato.dart';
import 'package:portifolio/pages/experiencia.dart';
import 'package:portifolio/pages/formacao.dart';
import 'package:portifolio/pages/projetos.dart';
import 'package:portifolio/pages/resumo.dart';
import 'package:responsive_styles/breakpoints/breakpoints.dart';
import 'package:responsive_styles/responsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _conhecimentosKey = GlobalKey();
  final GlobalKey _experienciasKey = GlobalKey();
  final GlobalKey _projetosKey = GlobalKey();
  final GlobalKey _formacaoKey = GlobalKey();
  final GlobalKey _certificadosKey = GlobalKey();
  final GlobalKey _contatosKey = GlobalKey();

  // 1. Adicione um ScrollController
  final ScrollController _scrollController = ScrollController();

  // 2. ValueNotifier para controlar a visibilidade do botão
  final ValueNotifier<bool> _showBackToTopButton = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    // 3. Configure o listener do scroll
    _scrollController.addListener(_checkScrollPosition);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _showBackToTopButton.dispose();
    super.dispose();
  }

  // 4. Função para verificar se o usuário está no topo
  void _checkScrollPosition() {
    if (_scrollController.position.pixels > 200) {
      // Ajuste o valor conforme necessário
      _showBackToTopButton.value = true;
    } else {
      _showBackToTopButton.value = false;
    }
  }

  void _scrollTo(GlobalKey key) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;
      if (context != null && context.mounted) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          alignment: 0.1,
        );
      }
    });
  }

  Widget _section(GlobalKey key, Widget child) {
    return Container(
      key: key,
      constraints: const BoxConstraints(minHeight: 500),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 41, 41),
        body: Stack(
          // Adicione um Stack como widget raiz
          children: [
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'BigShoulders',
              ),
              child: SingleChildScrollView(
                controller: _scrollController,
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
                          Container(
                            child: context.responsive.value(
                              {
                                Breakpoints.lg: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return Row(
                                      children: [
                                        const Expanded(
                                          flex: 1,
                                          child: Text(
                                            'LuizaRibeiro',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 42, 151, 51),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              TextButton(
                                                onPressed: () =>
                                                    _scrollTo(_homeKey),
                                                child: const Text(
                                                  'Home',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .white, // Cor do texto
                                                    fontSize:
                                                        18, // Tamanho da fonte
                                                    fontWeight: FontWeight
                                                        .bold, // Negrito
                                                    fontFamily:
                                                        'BigShoulders', // Fonte personalizada
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () => _scrollTo(
                                                    _conhecimentosKey),
                                                child: const Text(
                                                  'Conhecimentos',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .white, // Cor do texto
                                                    fontSize:
                                                        18, // Tamanho da fonte
                                                    fontWeight: FontWeight
                                                        .bold, // Negrito
                                                    fontFamily:
                                                        'BigShoulders', // Fonte personalizada
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () =>
                                                    _scrollTo(_experienciasKey),
                                                child: const Text(
                                                  'Experiências',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .white, // Cor do texto
                                                    fontSize:
                                                        18, // Tamanho da fonte
                                                    fontWeight: FontWeight
                                                        .bold, // Negrito
                                                    fontFamily:
                                                        'BigShoulders', // Fonte personalizada
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () =>
                                                    _scrollTo(_projetosKey),
                                                child: const Text(
                                                  'Projetos',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .white, // Cor do texto
                                                    fontSize:
                                                        18, // Tamanho da fonte
                                                    fontWeight: FontWeight
                                                        .bold, // Negrito
                                                    fontFamily:
                                                        'BigShoulders', // Fonte personalizada
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () =>
                                                    _scrollTo(_formacaoKey),
                                                child: const Text(
                                                  'Formação',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .white, // Cor do texto
                                                    fontSize:
                                                        18, // Tamanho da fonte
                                                    fontWeight: FontWeight
                                                        .bold, // Negrito
                                                    fontFamily:
                                                        'BigShoulders', // Fonte personalizada
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () =>
                                                    _scrollTo(_certificadosKey),
                                                child: const Text(
                                                  'Formação',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .white, // Cor do texto
                                                    fontSize:
                                                        18, // Tamanho da fonte
                                                    fontWeight: FontWeight
                                                        .bold, // Negrito
                                                    fontFamily:
                                                        'BigShoulders', // Fonte personalizada
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () =>
                                                    _scrollTo(_contatosKey),
                                                child: const Text(
                                                  'Contatos',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .white, // Cor do texto
                                                    fontSize:
                                                        18, // Tamanho da fonte
                                                    fontWeight: FontWeight
                                                        .bold, // Negrito
                                                    fontFamily:
                                                        'BigShoulders', // Fonte personalizada
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                Breakpoints.xs: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        PopupMenuButton<String>(
                                          color: const Color.fromARGB(
                                              255, 42, 151, 51),
                                          icon: const Icon(
                                            Icons.filter_list,
                                            color: Colors.white,
                                          ),
                                          onSelected: (String result) {
                                            switch (result) {
                                              case 'Home':
                                                _scrollTo(_homeKey);
                                                break;
                                              case 'Conhecimento':
                                                _scrollTo(_conhecimentosKey);
                                                break;
                                              case 'Experiências':
                                                _scrollTo(_experienciasKey);
                                                break;
                                              case 'Projetos':
                                                _scrollTo(_projetosKey);
                                                break;
                                              case 'Formacao':
                                                _scrollTo(_formacaoKey);
                                                break;
                                              case 'Certificados':
                                                _scrollTo(_certificadosKey);
                                                break;
                                              case 'Contato':
                                                _scrollTo(_contatosKey);
                                                break;
                                              default:
                                            }
                                          },
                                          itemBuilder: (BuildContext context) =>
                                              <PopupMenuEntry<String>>[
                                            const PopupMenuItem<String>(
                                              value: 'Home',
                                              child: Text(
                                                'Home',
                                                style: TextStyle(
                                                  color: Colors
                                                      .white, // Cor do texto
                                                  fontSize:
                                                      18, // Tamanho da fonte
                                                  fontWeight: FontWeight
                                                      .bold, // Negrito
                                                  fontFamily: 'BigShoulders',
                                                ),
                                              ),
                                            ),
                                            const PopupMenuItem<String>(
                                              value: 'Conhecimento',
                                              child: Text(
                                                'Conhecimento',
                                                style: TextStyle(
                                                  color: Colors
                                                      .white, // Cor do texto
                                                  fontSize:
                                                      18, // Tamanho da fonte
                                                  fontWeight: FontWeight
                                                      .bold, // Negrito
                                                  fontFamily: 'BigShoulders',
                                                ),
                                              ),
                                            ),
                                            const PopupMenuItem<String>(
                                              value: 'Experiências',
                                              child: Text(
                                                'Experiências',
                                                style: TextStyle(
                                                  color: Colors
                                                      .white, // Cor do texto
                                                  fontSize:
                                                      18, // Tamanho da fonte
                                                  fontWeight: FontWeight
                                                      .bold, // Negrito
                                                  fontFamily: 'BigShoulders',
                                                ),
                                              ),
                                            ),
                                            const PopupMenuItem<String>(
                                              value: 'Projetos',
                                              child: Text(
                                                'Projetos',
                                                style: TextStyle(
                                                  color: Colors
                                                      .white, // Cor do texto
                                                  fontSize:
                                                      18, // Tamanho da fonte
                                                  fontWeight: FontWeight
                                                      .bold, // Negrito
                                                  fontFamily: 'BigShoulders',
                                                ),
                                              ),
                                            ),
                                            const PopupMenuItem<String>(
                                              value: 'Formacao',
                                              child: Text(
                                                'Formação',
                                                style: TextStyle(
                                                  color: Colors
                                                      .white, // Cor do texto
                                                  fontSize:
                                                      18, // Tamanho da fonte
                                                  fontWeight: FontWeight
                                                      .bold, // Negrito
                                                  fontFamily: 'BigShoulders',
                                                ),
                                              ),
                                            ),
                                            const PopupMenuItem<String>(
                                              value: 'Certificados',
                                              child: Text(
                                                'Certificados',
                                                style: TextStyle(
                                                  color: Colors
                                                      .white, // Cor do texto
                                                  fontSize:
                                                      18, // Tamanho da fonte
                                                  fontWeight: FontWeight
                                                      .bold, // Negrito
                                                  fontFamily: 'BigShoulders',
                                                ),
                                              ),
                                            ),
                                            const PopupMenuItem<String>(
                                              value: 'Contato',
                                              child: Text(
                                                'Contato',
                                                style: TextStyle(
                                                  color: Colors
                                                      .white, // Cor do texto
                                                  fontSize:
                                                      18, // Tamanho da fonte
                                                  fontWeight: FontWeight
                                                      .bold, // Negrito
                                                  fontFamily: 'BigShoulders',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              },
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
              ),
            ),
            // Botão fixo no canto inferior direito
            Positioned(
              bottom: 30, // Distância do fundo
              right: 30, // Distância da direita
              child: ValueListenableBuilder<bool>(
                valueListenable: _showBackToTopButton,
                builder: (context, showButton, child) {
                  return AnimatedOpacity(
                    opacity: showButton ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 300),
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 42, 151, 51),
                      onPressed: () => _scrollTo(_homeKey),
                      child:
                          const Icon(Icons.arrow_upward, color: Colors.white),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
