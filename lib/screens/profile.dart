import 'package:flutter/material.dart';
import 'package:my_new_project/screens/custom_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('This is the Profile Page'),
      ),
    );
  }
}
