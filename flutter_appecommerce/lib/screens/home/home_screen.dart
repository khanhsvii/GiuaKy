import 'package:flutter/material.dart';
import '../../components/coustom_bottom_nav_bar.dart';

import '../../enums.dart';
import 'components/body.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
