import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
            children: [
              // Avatar with black background
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.black, // Black background color
                child: const Icon(
                  Icons.person, // Optional icon inside avatar
                  size: 60,
                  color: Colors.white, // White icon color
                ),
              ),
              const SizedBox(height: 20),

              // Name
              const Text(
                'Jay Mehta',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              // Phone Number
              const Text(
                '+977 9863481022',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 10),

              // Location
              const Text(
                'Biratnagar, Nepal',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 10),

              // Email
              const Text(
                'jaym1466@gmail.com',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AccountPage(),
  ));
}
