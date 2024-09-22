import 'package:flutter/material.dart';
import 'package:khau/components/circle_images.dart';
import 'package:khau/components/carousel_slider_widget.dart';
import 'package:khau/components/special_card.dart';
import 'package:khau/components/full_width_card.dart';
import 'package:khau/pages/fav.dart'; // Import the FullWidthCard component

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // Track the selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Your Location"),
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on_rounded),
            onPressed: () {
              // Add functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_box),
            onPressed: () {
              // Add functionality here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (_selectedIndex == 0) ...[
                const CarouselSliderWidget(),
                const SizedBox(height: 20),
                const Center(child: Text('Order TO Eat')),
                const CircleImages(),
                const SizedBox(height: 20),
                const Center(child: Text("Today's Special")),
                const SpecialCard(),
                const SizedBox(height: 20),
                FullWidthCard(
                  height: 200,
                  title: 'Full Width Special Item', // Pass title to FullWidthCard
                ),
                const SizedBox(height: 60), // Space for future content
              ] else if (_selectedIndex == 1) ...[
                FavoritesScreen(),
                FavoritesScreen(),

                // const SizedBox(height: 20),
              ] else if (_selectedIndex == 2) ...[
                const Center(child: Text('Orders')),
                const SizedBox(height: 20),
              ],
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'Orders',
          ),
        ],
        currentIndex: _selectedIndex, // Set the current index
        onTap: _onItemTapped, // Handle item tap
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
