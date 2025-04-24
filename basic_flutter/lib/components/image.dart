import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://static.vecteezy.com/system/resources/previews/009/992/634/large_2x/button-sign-free-icon-sign-design-free-png.png",
        ),
        Image.asset(
          "assets/images/free.png",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/free.png",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/free.png",
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
