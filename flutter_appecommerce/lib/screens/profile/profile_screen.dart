import 'package:flutter/material.dart';
import '../../components/coustom_bottom_nav_bar.dart';

import '../../enums.dart';
import 'components/body.dart';

// ignore: use_key_in_widget_constructors
class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
