import 'package:flutter/material.dart';

class GeoFencingPage extends StatelessWidget {
  const GeoFencingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoFencing'),
      ),
      body: const Center(
        child: Text('This is the GeoFencing Page'),
      ),
    );
  }
}
