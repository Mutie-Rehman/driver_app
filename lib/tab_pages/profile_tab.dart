import 'package:driver_app/auth_screens/sign_in_screen.dart';
import 'package:driver_app/global/global.dart';
import 'package:driver_app/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              fAuth.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MySplashScreen()));
            },
            child: const Text("Logout")));
  }
}
