import 'package:flutter/material.dart';

class SpecialCard extends StatelessWidget {
  const SpecialCard({Key? key}) : super(key: key);

  // Method to create a card widget
  Widget _buildCard(String imageUrl) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      color: Colors.black, // Set the background color to black
      child: SizedBox(
        width: 150, // Set the width of the card
        height: 200, // Set the height of the card
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container( // Wrap the Wrap in a Container
      padding: const EdgeInsets.symmetric(vertical: 20), // Add some vertical padding
      child: Wrap( // Use Wrap instead of Row
        alignment: WrapAlignment.center,
        children: [
          _buildCard('https://via.placeholder.com/400'),
          _buildCard('https://via.placeholder.com/400'),
          _buildCard('https://via.placeholder.com/400'),
          // Add more cards as needed
        ],
      ),
    );
  }
}
