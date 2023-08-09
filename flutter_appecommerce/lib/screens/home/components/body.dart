import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            // ignore: prefer_const_constructors
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            // ignore: prefer_const_constructors
            DiscountBanner(),
            Categories(),
            // ignore: prefer_const_constructors
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            // ignore: prefer_const_constructors
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
