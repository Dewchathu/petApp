import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class PetProfilePage extends StatelessWidget {
  const PetProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Profile'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('This is the Pet Profile Page'),
      ),
    );
  }
}
