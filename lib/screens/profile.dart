import 'package:flutter/material.dart';
import 'package:my_new_project/screens/custom_drawer.dart';
import 'package:my_new_project/screens/data.dart';
import 'package:my_new_project/screens/update_profile.dart';

class ProfileDetailWidget extends StatelessWidget {
  final String value;
  final double width;

  const ProfileDetailWidget({
    required this.value,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: width,  // Set individual width for the box
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
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

  void _edit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const UpdateProfileScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFE6E6E6),
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
                  'Vihanga Sri Lanka',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 20),
                ...profiles.map((profile) =>
                    ProfileDetailWidget(value: profile.username,width: 180.0,)),
                ...profiles.map((profile) =>
                    ProfileDetailWidget(value: profile.email,width: 300.0,)),
                Row(
                  children: [
                    ...profiles.map((profile) =>
                        ProfileDetailWidget(value: profile.password,width: 180.0,)),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        _showEditPassword;
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(5.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Expanded( // Use Expanded to take the full width
                        child: Icon(
                          Icons.edit,
                          size: 30.0, // Adjust the size of the icon as needed
                          color: Color(0xFFA6CF6F),
                        ),
                      ),
                    )


                  ],
                ),
                ...profiles.map((profile) =>
                    ProfileDetailWidget(value: profile.mobile,width: 150.0,)),
                const Text("Address",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ...profiles.map((profile) =>
                    ProfileDetailWidget(value: profile.road,width: 150.0,)),
                Row(
                  children: [
                    ...profiles.map((profile) =>
                        ProfileDetailWidget(value: profile.city,width: 150.0,)),
                    const SizedBox(width: 20),
                    ...profiles.map((profile) =>
                        ProfileDetailWidget(value: profile.province,width: 180.0,)),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _edit(context); // Call _edit with context
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA6CF6F),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  child: const Text('Edit Details'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _showEditPassword(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Password'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Type Password'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Re-Type Password'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                // Add logic to handle adding the allergy here
                // Extract the values from the text fields and process accordingly
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
