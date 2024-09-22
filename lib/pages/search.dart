import 'package:flutter/material.dart';
import 'package:khau/components/circle_images.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> _items = [
    'Pizza',
    'Burger',
    'Pasta',
    'Salad',
    'Sushi',
    'Tacos',
    'Ice Cream',
    'Steak',
    'Sandwich',
    'Pancakes',
  ];

  String _searchQuery = '';
  List<String> _filteredItems = [];

  void _filterItems(String query) {
    setState(() {
      _searchQuery = query;
      if (query.isNotEmpty) {
        _filteredItems = _items
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        _filteredItems.clear(); // Clear results when the search query is empty
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: _filterItems,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter your search query',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Optionally implement search action here
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Display results only if there are any
            if (_filteredItems.isEmpty && _searchQuery.isNotEmpty) ...[
              const Text("No results found", style: TextStyle(fontSize: 18)),
            ] else if (_searchQuery.isEmpty) ...[
              // Show CircleImages when search query is empty
              const CircleImages(),
            ] else ...[
              Expanded(
                child: ListView.builder(
                  itemCount: _filteredItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_filteredItems[index]),
                    );
                  },
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
