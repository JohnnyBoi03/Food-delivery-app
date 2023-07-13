import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/resturant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Resturant resturant;

  const FoodList(this.callback, this.resturant, this.selected, {super.key});

  @override
  Widget build(BuildContext context) {
    final Category = resturant.menu.keys.toList();
    return Container(
        height: 100,
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () => callback(index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            selected == index ? kPrimaryColor : Colors.white),
                    child: Text(
                      Category[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold 
                      ),
                    ),
                  ),
                ),
            separatorBuilder: (_, index) => const SizedBox(
                  width: 20,
                ),
            itemCount: Category.length));
  }
}
