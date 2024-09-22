import 'package:flutter/material.dart';
import 'package:khau/components/full_width_card.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return FullWidthCard(height: 150, title: "Mehta Bhojnalaya");
  }
}