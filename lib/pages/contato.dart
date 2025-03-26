import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  const Contato({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imagens/cor.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text(
              'CONTATO',
              style: TextStyle(
                  color: Color.fromARGB(255, 19, 105, 26),
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SizedBox(
              height: 100,
            ),
            Text('ribeiroluiza.jlle@gmail.com'),
            Text('Linkedln'),
            Text('GitHub'),
          ],
        ),
      ),
    );
  }
}
