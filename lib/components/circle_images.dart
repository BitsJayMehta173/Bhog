import 'package:flutter/material.dart';

class CircleImages extends StatelessWidget {
  const CircleImages({Key? key}) : super(key: key);

  // Method to create a circular image with a title
  Widget _buildCircleImage(String title) {
    return Column(
      children: [
        ClipOval(
          child: Container(
            color: Color.fromARGB(255, 199, 196, 196),
            width: 80,
            height: 80,
            child: const Center(
              child: Text(''), // Keep this empty for the ClipOval
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 80,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCircleImage('Home Style'),
            const SizedBox(width: 10),
            _buildCircleImage('Special 1'),
            const SizedBox(width: 10),
            _buildCircleImage('Special 2'),
            const SizedBox(width: 10),
            _buildCircleImage('Special 3'),
            const SizedBox(width: 10),
            _buildCircleImage('Special 4'),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
