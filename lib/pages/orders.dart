import 'package:flutter/material.dart';
import 'package:khau/components/orderitem.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Orderitem(height: 80, title: "Pizza");
  }
}