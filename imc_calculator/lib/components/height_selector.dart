import 'package:flutter/material.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 1.70; // Default height value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Height",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "${height.toStringAsFixed(2)} m",
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Slider(
          value: height,
          min: 1.0,
          max: 2.5,
          divisions: 15,
          label: "${height.toStringAsFixed(2)} m",
          onChanged: (value) {
            setState(() {
              height = value;
            });
          },
        ),
      ],
    );
  }
}
