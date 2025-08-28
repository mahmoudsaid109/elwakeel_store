import 'package:flutter/material.dart';

import '../../../../core/shared/home/widgets/custom_search_bar.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final TextEditingController _searchController = TextEditingController();

  void _handleSearch() {
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchBar(controller: _searchController, onSearch: _handleSearch),
        Center(
          child: Text(
            'Home Content',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
