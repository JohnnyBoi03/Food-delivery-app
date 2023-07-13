class Food{
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  List<Map<String, String>> ingredents;
  String about;
  bool highLight;
  Food(
    this.about, this.cal, this.desc,  this.imgUrl, this.ingredents, this.name, this.price, this.score, this.waitTime, {this.highLight=false});


    static List<Food> generateRecommendFoods() {
    return [
      Food(
        'Metus magna mauris imperdiet quam conubia',
        '325 kcal',
        'No1 in sales',
        'assets/images/dish1.png',
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        'Soba Soup',
        15,
        4.8,
        '30 min',highLight: true,
    
      ),

      Food(
         'Velit hac ultricies sociis purus fames ut natoque tincidunt mus donec nascetur',
        '325 kcal',
        'Low fat',
        'assets/images/dish2.png',
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        'Sai Ua Samum Phrai',
        18,
        4.8,
        '50 min',
      ),

      Food('Nibh accumsan ultricies in sollicitudin tempus nisl blandit Habitant dictum leo sem pulvinar viverra',
        '325 kcal',
        'Low fat',
        'assets/images/dish3.png',
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        'Tomato Chicken',
        20,
        4.8,
        '45 min',
        )
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'Pellentesque torquent metus. Senectus magnis amet fringilla gravida',
        '325 kcal',
        'Highly Recomend',
        'assets/images/dish4.png',
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        'Ratatouille Pasta',
        25,
        4.8,
        '40 min', highLight: true
      ),
      Food(
        'Metus magna mauris imperdiet quam conubia',
        '325 kcal',
        'No1 in sales',
        'assets/images/dish1.png',
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
        'Soba Soup',
        15,
        4.8,
        '30 min',highLight: true,
    
      ),
    ];
  }
  
  static List<Food> generateNoodlesFoods(){
    return[];
  }

  static List<Food> generatePizzarFoods(){
    return[];
  }
}
