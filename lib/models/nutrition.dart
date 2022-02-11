class Nutrition {
  String name;
  String description;
  int calories;
  int protein;
  int carbohydrates;
  int fat;
  int fiber;
  int sugars;
  int sodium;

  Nutrition({
    required this.name,
    this.description = '',
    this.calories = 0,
    this.protein = 0,
    this.carbohydrates = 0,
    this.fat = 0,
    this.fiber = 0,
    this.sugars = 0,
    this.sodium = 0,
  });
}
