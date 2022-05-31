import 'package:flutter/material.dart';

class LoadImage extends StatelessWidget {
  const LoadImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/image1.webp',
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/image2.webp',
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/image1.webp',
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/image2.webp',
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
    );
  }
}
