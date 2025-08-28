import 'package:flutter/material.dart';

class WareHouseMainScreen extends StatelessWidget {
  const WareHouseMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'WareHouse Main Screen ',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}
