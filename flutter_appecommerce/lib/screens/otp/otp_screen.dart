import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/body.dart';

// ignore: use_key_in_widget_constructors
class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
