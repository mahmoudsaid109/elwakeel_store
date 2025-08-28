import 'package:flutter/material.dart';

class SuppliersMainScreen extends StatelessWidget {
  const SuppliersMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Suppliers Main Screen ',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}