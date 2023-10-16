import 'package:flutter/material.dart';

class PetProfilePage extends StatelessWidget {
  const PetProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Profile'),
      ),
      body: const Center(
        child: Text('This is the Pet Profile Page'),
      ),
    );
  }
}
