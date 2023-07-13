import 'package:food_delivery_app/models/food.dart';

class Resturant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Resturant(
    this.desc,
    this.distance,
    this.label,
    this.logoUrl,
    this.menu,
    this.name,
    this.score,
    this.waitTime,
  );
  static Resturant generateResturant() {
    return Resturant(
        'Orange sandwich is delicious',
        '2.4km',
        'Resturant',
        'assets/images/res_logo.png',
        {
          'Recommend': Food.generateRecommendFoods(),
          'Popular': Food.generatePopularFoods(),
          'Noodles': [],
          'Pizza': []
        },
        'Resturant',
        4.7,
        '20-30min');
  }
}
