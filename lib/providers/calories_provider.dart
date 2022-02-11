import 'package:flutter/material.dart';

import '../models/nutrition.dart';

class CalProvider extends ChangeNotifier {
  CalProvider() {
    setDailyNutritionTally();
    setBreakfastNutrition();
    setRemainingNutrition();
  }

  Nutrition dailyNutritionGoal = Nutrition(name: 'Goal', calories: 2000);
  Nutrition dailyNutritionTally = Nutrition(name: 'Food');
  Nutrition remainingNutrition = Nutrition(name: 'Remaining');

  List<Nutrition> dailyList = [];

  List<Nutrition> breakfastList = [
    Nutrition(name: 'Fish', calories: 400),
    Nutrition(name: 'Meat', calories: 233),
    Nutrition(name: 'Eggs', calories: 250),
    Nutrition(name: 'Baloney', calories: 80),
  ];

  Nutrition breakfastNutrition = Nutrition(name: 'Breakfast');
  List<Nutrition> lunchList = [];
  Nutrition lunchNutrition = Nutrition(name: 'Lunch');
  List<Nutrition> dinnerList = [];
  Nutrition dinnerNutrition = Nutrition(name: 'Dinner');
  List<Nutrition> snackList = [];
  Nutrition snackNutrition = Nutrition(name: 'Snack');

  //setdailyNutritionGoal()

  setRemainingNutrition() {
    remainingNutrition.calories =
        dailyNutritionGoal.calories - dailyNutritionTally.calories;
    remainingNutrition.protein =
        dailyNutritionGoal.protein - dailyNutritionTally.protein;
    remainingNutrition.carbohydrates =
        dailyNutritionGoal.carbohydrates - dailyNutritionTally.carbohydrates;
    remainingNutrition.fat = dailyNutritionGoal.fat - dailyNutritionTally.fat;
    remainingNutrition.fiber =
        dailyNutritionGoal.fiber - dailyNutritionTally.fiber;
    remainingNutrition.sugars =
        dailyNutritionGoal.sugars - dailyNutritionTally.sugars;
    remainingNutrition.sodium =
        dailyNutritionGoal.sodium - dailyNutritionTally.sodium;
    notifyListeners();
  }

  setDailyNutritionTally() {
    setDailyList();
    for (var i = 0; i < dailyList.length; i++) {
      Nutrition meal = dailyList[i];
      dailyNutritionTally.calories += meal.calories;
      dailyNutritionTally.protein += meal.protein;
      dailyNutritionTally.carbohydrates += meal.carbohydrates;
      dailyNutritionTally.fat += meal.fat;
      dailyNutritionTally.fiber += meal.fiber;
      dailyNutritionTally.sugars += meal.sugars;
      dailyNutritionTally.sodium += meal.sodium;
      notifyListeners();
    }
  }

  setDailyList() {
    dailyList = [...breakfastList, ...lunchList, ...dinnerList, ...snackList];
    notifyListeners();
  }

  _addToNutritionTally(Nutrition target, Nutrition item) {
    target.calories += item.calories;
    target.carbohydrates += item.carbohydrates;
    target.protein += item.protein;
    target.fat += item.fat;
    target.fiber += item.fiber;
    target.sugars += item.sugars;
    target.sodium += item.sodium;
    notifyListeners();
  }

  _resetNutritionTally(Nutrition target) {
    target.calories = 0;
    target.carbohydrates = 0;
    target.protein = 0;
    target.fat = 0;
    target.fiber = 0;
    target.sugars = 0;
    target.sodium = 0;
    notifyListeners();
  }

  addBreakfastItem(Nutrition item) {
    breakfastList.add(item);
    _addToNutritionTally(dailyNutritionTally, item);
    _addToNutritionTally(breakfastNutrition, item);
    notifyListeners();
  }

  setBreakfastNutrition() {
    _resetNutritionTally(breakfastNutrition);
    for (var i = 0; i < breakfastList.length; i++) {
      _addToNutritionTally(breakfastNutrition, breakfastList[i]);
    }
    notifyListeners();
  }

  addLunchItem(Nutrition item) {
    lunchList.add(item);
    _addToNutritionTally(dailyNutritionTally, item);
    _addToNutritionTally(lunchNutrition, item);
    notifyListeners();
  }

  setLunchNutrition() {
    _resetNutritionTally(lunchNutrition);
    for (var i = 0; i < lunchList.length; i++) {
      _addToNutritionTally(lunchNutrition, lunchList[i]);
    }
    notifyListeners();
  }

  addDinnerItem(Nutrition item) {
    dinnerList.add(item);
    _addToNutritionTally(dailyNutritionTally, item);
    _addToNutritionTally(dinnerNutrition, item);
    notifyListeners();
  }

  addSnackItem(Nutrition item) {
    snackList.add(item);
    _addToNutritionTally(dailyNutritionTally, item);
    _addToNutritionTally(snackNutrition, item);
    notifyListeners();
  }

  getNutritionGoal() {
    return dailyNutritionGoal;
  }

  getNutritionTally() {
    return dailyNutritionTally;
  }

  getRemainingNutrition() {
    return remainingNutrition;
  }
}
