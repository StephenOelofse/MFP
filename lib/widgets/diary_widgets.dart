import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/nutrition.dart';
import '../providers/calories_provider.dart';

List<Widget> diaryWidgets = [
  const TimeCategory(snackType: 'Breakfast'),
  const TimeCategory(snackType: 'Lunch'),
  const TimeCategory(snackType: 'Dinner'),
  const TimeCategory(snackType: 'Snacks')
];

List<Widget> _widgetItems(List list) {
  List<Widget> newlist = [];
  if (list.isNotEmpty) {
    for (var i = 0; i < list.length; i++) {
      newlist.add(DiaryFoodItem(item: list[i]));
    }
  }
  return newlist;
}

class TimeCategory extends StatefulWidget {
  const TimeCategory({
    Key? key,
    required this.snackType,
  }) : super(key: key);

  final String snackType;

  @override
  State<TimeCategory> createState() => _TimeCategoryState();
}

class _TimeCategoryState extends State<TimeCategory> {
  @override
  Widget build(BuildContext context) {
    final caloriesProvider = Provider.of<CalProvider>(context);

    List categoryList = [];
    Nutrition categoryNutrition = Nutrition(name: 'New Category');

    switch (widget.snackType) {
      case 'Breakfast':
        categoryNutrition = caloriesProvider.breakfastNutrition;
        categoryList = caloriesProvider.breakfastList;
        break;
      case 'Lunch':
        categoryNutrition = caloriesProvider.lunchNutrition;
        categoryList = caloriesProvider.lunchList;
        break;
      case 'Dinner':
        categoryNutrition = caloriesProvider.dinnerNutrition;
        categoryList = caloriesProvider.dinnerList;
        break;
      case 'Snacks':
        categoryNutrition = caloriesProvider.snackNutrition;
        categoryList = caloriesProvider.snackList;
    }

    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
                child: Text(
                  widget.snackType,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  '${categoryNutrition.calories}',
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          const Divider(color: Colors.grey),
          Column(
            children: _widgetItems(categoryList),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: TextButton(
                    onPressed: () {
                      //print('Value: ${categoryList}');
                    },
                    child: const Text('Add Food')),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 14,
                ),
                child: Icon(Icons.more_horiz),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DiaryFoodItem extends StatelessWidget {
  const DiaryFoodItem({Key? key, required this.item}) : super(key: key);

  final Nutrition item;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        SizedBox(
          width: width - 10,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(item.name),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text('${item.calories}'),
                  ),
                ],
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Description of item, serving size of item',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ]),
              Row(
                children: const [
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DiaryBottom extends StatefulWidget {
  const DiaryBottom({Key? key}) : super(key: key);

  @override
  State<DiaryBottom> createState() => _DiaryBottomState();
}

class _DiaryBottomState extends State<DiaryBottom> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width / 2.5,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.pie_chart_outline,
                    size: 14,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black54,
                  ),
                  label: const Text('Nutrition')
                  // onPressed: () {},
                  // child: const Text('Notes'),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.white,
                  //   onPrimary: Colors.grey,
                  ,
                ),
              ),
              SizedBox(
                width: width / 2.5,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notes_outlined,
                    size: 14,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black54,
                  ),
                  label: const Text('Notes')
                  // onPressed: () {},
                  // child: const Text('Notes'),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.white,
                  //   onPrimary: Colors.grey,
                  ,
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                width: width / 1.15,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Complete Diary')))
          ])
        ],
      )),
    );
  }
}
