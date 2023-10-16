import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('This is the Community Page'),
      ),
    );
  }
}
