import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class HeightSelector extends StatefulWidget {
  final double selectedHeight;
  final Function(double) onHeightChange;

  const HeightSelector({
    super.key,
    required this.selectedHeight,
    required this.onHeightChange,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
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
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "HEIGHT",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "${widget.selectedHeight.toStringAsFixed(0)} cm",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Slider(
              value: widget.selectedHeight,
              min: 100,
              max: 250,
              divisions: 70,
              activeColor: AppColors.primary,
              label: "${widget.selectedHeight.toStringAsFixed(0)} cm",
              onChanged: (newHeight) {
                widget.onHeightChange(newHeight);
              },
            ),
          ],
        ),
      ),
    );
  }
}
