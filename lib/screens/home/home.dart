import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/screens/home/resturant_info.dart';
import 'package:food_delivery_app/screens/home/widget/food_list.dart';
import 'package:food_delivery_app/screens/home/widget/food_list_view.dart';
import 'package:food_delivery_app/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var selected = 0;
  final pageController = PageController();
  final resturant = Resturant.generateResturant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          ResturantInfo(),
          FoodList((int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, resturant, selected),
          Expanded(
            child: FoodListView((int index) {
              setState(() {
                selected = index;
              });
            }, pageController, resturant, selected),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SmoothPageIndicator(
              controller: pageController,
              count: resturant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8)),
                activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: kBackground,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: DotBorder(
                      color: kPrimaryColor,
                      padding: 2,
                      width: 2,
                    )),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: Icon(Icons.shopping_bag_outlined,
        color: Colors.black,
        size: 30,),
      ),
    );
  }
}
