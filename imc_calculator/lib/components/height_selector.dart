import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 170; // Default height value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
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
              "${height.toStringAsFixed(0)} cm",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Slider(
              value: height,
              min: 100,
              max: 250,
              divisions: 70,
              activeColor: AppColors.primary,
              label: "${height.toStringAsFixed(0)} cm",
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
