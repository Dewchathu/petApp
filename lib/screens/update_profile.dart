import 'package:flutter/material.dart';
import 'package:my_new_project/screens/data.dart'; // Import the profile data

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  // Add more controllers for other fields

  @override
  void initState() {
    super.initState();
    // Initialize the controllers with the current profile data
    _usernameController.text = profiles[0].username;
    _emailController.text = profiles[0].email;
    _mobileController.text = profiles[0].mobile;
    // Initialize other controllers with current data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Profile'),
        backgroundColor: const Color(0xFFA6CF6F),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _mobileController,
              decoration: InputDecoration(labelText: 'Mobile'),
            ),
            // Add more text fields for other profile details

            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Update the profile data with the new values
                profiles[0].username = _usernameController.text;
                profiles[0].email = _emailController.text;
                profiles[0].mobile = _mobileController.text;
                // Update other profile details

                // Navigate back to the profile page after updating
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA6CF6F),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
