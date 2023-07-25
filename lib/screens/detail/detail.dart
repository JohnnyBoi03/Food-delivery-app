// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/screens/detail/widgets/food_detail.dart';
import 'package:food_delivery_app/screens/detail/widgets/food_img.dart';
//import 'package:food_delivery_app/screens/detail/widgets/food_quantity.dart';
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
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(
                  15,
                ),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Text(food.quantity.toString(),
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              )
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
