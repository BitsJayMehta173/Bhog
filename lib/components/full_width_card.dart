import 'package:flutter/material.dart';

class FullWidthCard extends StatelessWidget {
  final double height;
  final String title; // Add title parameter

  const FullWidthCard({Key? key, required this.height, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      color: const Color.fromARGB(255, 138, 141, 144), // Change to any color you prefer
      child: SizedBox(
        height: height, // Set the height to match the carousel
        child: Stack(
          children: [
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: const Text(
                'Mehta Bhojnalaya',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
