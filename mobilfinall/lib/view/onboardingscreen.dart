import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          OnboardingPage(
            title: 'Porschegallery',
            description: 'Porsche3',
            imagePath: 'assets/image/Porsche3.jpg',
          ),
          OnboardingPage(
            title: 'Porschegallery',
            description: 'Porsche3',
            imagePath: 'assets/image/Porsche3.jpg',
          ),
          OnboardingPage(
            title: 'Porschegallery',
            description: 'Porsche4',
            imagePath: 'assets/image/Porsche4.jpg',
          ),
          OnboardingPage(
            title: 'Porschegallery',
            description: 'Porsche4',
            imagePath: 'assets/image/Porsche5.jpg',
          ),
          OnboardingPage(
            title: 'Porschegallery',
            description: 'Porsche5',
            imagePath: 'assets/image/Porsche6.jpg',
          ),
          OnboardingPage(
            title: 'Porschegallery',
            description: 'Porsche6',
            imagePath: 'assets/image/Porsche7.jpg',
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
