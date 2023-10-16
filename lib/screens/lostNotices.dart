import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class LostNoticesPage extends StatelessWidget {
  const LostNoticesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lost Notices'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('This is the Lost Notices Page'),
      ),
    );
  }
}
