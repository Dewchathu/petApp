import 'package:flutter/material.dart';
import 'package:my_new_project/screens/dashboard.dart';
import 'package:my_new_project/screens/profile.dart';

import 'PetProfile.dart';
import 'community.dart';
import 'geoFencing.dart';
import 'lostNotices.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF91bd57),
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: null,
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/front_image.png'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/drawer_header.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            _buildDrawerListTile(Icons.person, 'Profile', () => _goToProfilePage(context)),
            _buildDrawerListTile(Icons.pets, 'Pet Profile', () => _goToPetProfilePage(context)),
            _buildDrawerListTile(Icons.location_on, 'Geofencing', () => _goToGeoFencingPage(context)),
            _buildDrawerListTile(Icons.people, 'Community', () => _goToCommunityPage(context)),
            _buildDrawerListTile(Icons.notification_important, 'Lost Notices', () => _goToLostNoticesPage(context)),


            const Spacer(),
            _buildDrawerListTile(Icons.logout, 'Log Out', () {}),
          ],
        ),
      ),
    );

  }
  ListTile _buildDrawerListTile(
      IconData iconData, String title, VoidCallback onTapCallback) {
    return ListTile(
      leading: Icon(iconData, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
      onTap: onTapCallback,
    );
  }
  void _goToProfilePage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ProfilePage(),
      ),
    );
  }

  void _goToPetProfilePage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Dashboard(),
      ),
    );
  }

  void _goToGeoFencingPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const GeoFencingPage(),
      ),
    );
  }

  void _goToCommunityPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CommunityPage(),
      ),
    );
  }

  void _goToLostNoticesPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LostNoticesPage(),
      ),
    );
  }

}
