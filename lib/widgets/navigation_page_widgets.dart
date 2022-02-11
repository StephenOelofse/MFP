import 'package:flutter/material.dart';
import 'package:my_fitness_pal_clone/widgets/home_widgets.dart';
import './calorie_card.dart';
import './home_widgets.dart';
import './diary_widgets.dart';
import './recipe_widgets.dart';

const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
List widgetOptions = [
  [const CalorieCard(), ...homeWidgets],
  [const CalorieCard(), ...diaryWidgets, const DiaryBottom()],
  [...recipeWidgets],
  [],
  [const Text('Me', style: optionStyle)]
];
