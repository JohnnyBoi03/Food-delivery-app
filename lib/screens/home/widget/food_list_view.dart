import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/screens/detail/detail.dart';
import 'package:food_delivery_app/screens/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Resturant resturant;

  const FoodListView(
      this.callback, this.pageController, this.resturant, this.selected,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final category = resturant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(resturant.menu[category[selected]]![index])));
                    },
                    child:
                        FoodItem(resturant.menu[category[selected]]![index])),
                separatorBuilder: (_, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: resturant.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
