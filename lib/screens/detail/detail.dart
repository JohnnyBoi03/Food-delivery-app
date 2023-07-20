import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/screens/detail/widgets/food_detail.dart';
import 'package:food_delivery_app/screens/detail/widgets/food_img.dart';
import 'package:food_delivery_app/widgets/custom_app_bar.dart';

import '../../models/food.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  DetailPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_new_sharp,
              Icons.favorite_border,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImg(food),
            FoodDetail(food),
          ],
        ),
      ),
    );
  }
}
