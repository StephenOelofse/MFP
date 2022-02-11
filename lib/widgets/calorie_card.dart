import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/calories_provider.dart';

class CalorieCard extends StatefulWidget {
  const CalorieCard({Key? key}) : super(key: key);

  @override
  State<CalorieCard> createState() => _CalorieCardState();
}

class _CalorieCardState extends State<CalorieCard> {
  @override
  Widget build(BuildContext context) {
    final caloriesProvider = Provider.of<CalProvider>(context);
    return Card(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20, top: 15),
                child: Text('Calories Remaining',
                    style: TextStyle(
                      fontSize: 18,
                    ))),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.more_horiz,
                color: Colors.black,
                size: 25,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text('${caloriesProvider.dailyNutritionGoal.calories}',
                    style: const TextStyle(fontSize: 18)),
                const Text('Goal'),
              ],
            ),
            const Text('-', style: TextStyle(fontSize: 18)),
            Column(
              children: [
                Text('${caloriesProvider.dailyNutritionTally.calories}',
                    style: const TextStyle(fontSize: 18)),
                const Text('Food'),
              ],
            ),
            const Text('+', style: TextStyle(fontSize: 18)),
            Column(
              children: const [
                Text('0', style: TextStyle(fontSize: 18)),
                Text("Exercise"),
              ],
            ),
            const Text('=', style: TextStyle(fontSize: 18)),
            Column(
              children: [
                Text(
                  '${caloriesProvider.dailyNutritionGoal.calories - caloriesProvider.dailyNutritionTally.calories}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text('Remaining')
              ],
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        Row(
          children: const [
            SizedBox(
              height: 30,
            )
          ],
        )
      ],
    ));
  }
}
