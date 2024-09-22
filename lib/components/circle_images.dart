import 'package:flutter/material.dart';

class CircleImages extends StatelessWidget {
  const CircleImages({Key? key}) : super(key: key);

  // Method to create a circular image
  Widget buildCircleImage(String imageUrl) {
    return ClipOval(
      child: Image.network(
        imageUrl,
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildCircleImage('https://via.placeholder.com/150'),
            const SizedBox(width: 10),
            buildCircleImage('https://via.placeholder.com/150'),
            const SizedBox(width: 10),
            buildCircleImage('https://via.placeholder.com/150'),
            const SizedBox(width: 10),
            buildCircleImage('https://via.placeholder.com/150'),
            const SizedBox(width: 10),
            buildCircleImage('https://via.placeholder.com/150'),
            const SizedBox(width: 10),
            buildCircleImage('https://via.placeholder.com/150'),
          ],
        ),
      ),
    );
  }
}
