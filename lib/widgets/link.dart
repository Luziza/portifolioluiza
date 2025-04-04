import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatefulWidget {
  final String link;
  final String nome;
  final Color cor;

  const Link(
      {super.key, required this.link, required this.nome, required this.cor});

  @override
  State<Link> createState() => _LinkState();
}

class _LinkState extends State<Link> {
  Future<void> _launchURL() async {
    final Uri url = Uri.parse(widget.link); // Usa o link passado como parâmetro
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchURL, // Agora o método está acessível
        child: Text(
          widget.nome,
          style: TextStyle(
            color: widget.cor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
