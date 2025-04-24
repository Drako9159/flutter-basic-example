import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/screens/imc_home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('IMC Calculator'),
          centerTitle: false,
          backgroundColor: AppColors.primary,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          leadingWidth: 50,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Action when menu icon is pressed
            },
          ),
          actionsIconTheme: const IconThemeData(color: Colors.white),
          iconTheme: const IconThemeData(color: Colors.white),
          toolbarHeight: 60,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Action when search icon is pressed
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Action when notifications icon is pressed
              },
            ),
          ],
        ),
        backgroundColor: AppColors.background,
        body: ImcHomeScreen(),
      ),
    );
  }
}
