import 'package:flutter/material.dart';
import 'package:my_new_project/screens/custom_drawer.dart';
import 'package:my_new_project/screens/data.dart';

class ProfileDetailWidget extends StatelessWidget {
  final String value;

  const ProfileDetailWidget({
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: const Color(0xFFA6CF6F), // Green color
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          value,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}




class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFE6E6E6),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Image.asset('assets/images/icon_logo.png'),
              onPressed: () {
                // Add the action for this icon
              },
            ),
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/profile_bg.png',
            fit: BoxFit.cover,
          ),
           SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 0.0),
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/front_image.png'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'John Doe',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Software Engineer',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(height: 20),
                ...profiles.map((profile) => ProfileDetailWidget(value: profile.username)),
                ...profiles.map((profile) => ProfileDetailWidget(value: profile.email)),
                ...profiles.map((profile) => ProfileDetailWidget(value: profile.mobile)),
                ...profiles.map((profile) => ProfileDetailWidget(value: profile.road)),
                ...profiles.map((profile) => ProfileDetailWidget(value: profile.city)),
                ...profiles.map((profile) => ProfileDetailWidget(value: profile.province)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
