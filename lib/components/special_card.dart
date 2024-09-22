import 'package:flutter/material.dart';

class SpecialCard extends StatelessWidget {
  const SpecialCard({Key? key}) : super(key: key);

  // Method to create a card widget
  Widget _buildCard() {
    return Card(
      margin: const EdgeInsets.all(8.0),
      color: Colors.grey,
      child: SizedBox(
        width: 150,
        height: 200,
        child: const Center(
          child: Text(
            'Special Item',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          _buildCard(),
          _buildCard(),
          _buildCard(),
          // Add more cards as needed
        ],
      ),
    );
  }
}


// _buildCard('https://via.placeholder.com/400'),
//           _buildCard('https://via.placeholder.com/400'),
//           _buildCard('https://via.placeholder.com/400'),