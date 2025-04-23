import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_styles/breakpoints/breakpoints.dart';
import 'package:responsive_styles/responsive/responsive.dart';

class Certificados extends StatefulWidget {
  const Certificados({super.key});

  @override
  State<Certificados> createState() => _CertificadosState();
}

class _CertificadosState extends State<Certificados> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  final List<String> images = [
    'assets/imagens/cert1.png',
    'assets/imagens/cert2.png',
    'assets/imagens/cert3.png',
    'assets/imagens/cert4.png',
    'assets/imagens/cert5.png',
    'assets/imagens/cert6.png',
    'assets/imagens/cert7.png',
    'assets/imagens/cert8.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Column(
        children: [
          const Text(
            'CERTIFICADOS',
            style: TextStyle(
              color: Color.fromARGB(255, 42, 151, 51),
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          const SizedBox(height: 40),
          Container(
              child: context.responsive.value({
            Breakpoints.lg: LayoutBuilder(builder: (context, constraints) {
              return CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: images.map((image) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              );
            }),
            Breakpoints.xs: LayoutBuilder(builder: (context, constraints) {
              return CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: images.map((image) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              );
            })
          })),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _carouselController.animateToPage(entry.key),
                child: Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == entry.key
                        ? Colors.green
                        : Colors.grey.withOpacity(0.4),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
