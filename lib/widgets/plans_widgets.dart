import 'package:flutter/material.dart';

List<Widget> plansWidgets = [
  const Filters(),
  const PlanCard(
      title: 'Low Impact Strength',
      planLength: '28 days',
      planFilter: 'Workout',
      imageUrl:
          'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
      planUrl: 'planUrl'),
  const PlanCard(
      title: 'Low Impact Strength',
      planLength: '28 days',
      planFilter: 'Workout',
      imageUrl:
          'https://images.unsplash.com/photo-1598136490941-30d885318abd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2338&q=80',
      planUrl: 'planUrl'),
  const PlanCard(
      title: 'Low Impact Strength',
      planLength: '28 days',
      planFilter: 'Workout',
      imageUrl:
          'https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
      planUrl: 'planUrl'),
];

class PlanScreen extends StatelessWidget {
  const PlanScreen({Key? key, required this.widgetList}) : super(key: key);

  final List<Widget> widgetList;

  @override
  Widget build(BuildContext context) {
    return ListView(children: widgetList);
  }
}

class PlanCard extends StatelessWidget {
  const PlanCard(
      {Key? key,
      required this.title,
      required this.planLength,
      this.frequency = 'Daily',
      required this.planFilter,
      required this.imageUrl,
      required this.planUrl})
      : super(key: key);

  final String title;
  final String planLength;
  final String frequency;
  final String imageUrl;
  final String planFilter;
  final String planUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Card(
          child: Column(
        children: [
          Row(
            children: [
              InkWell(
                child: SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width - 10,
                    child: Image.network(imageUrl, fit: BoxFit.fitWidth)),
              ),
            ],
          ),
          ListTile(
            tileColor: Colors.grey,
            title: Text(title),
            subtitle: Text(planLength + ' ◉ ' + frequency),
          ),
        ],
      )),
    );
  }
}

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 10),
      child: SizedBox(
        height: height / 3.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 10, left: 10),
              child: Text(
                'Find A Plan',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70, left: 10),
              child: Row(
                children: const [
                  Flexible(
                    child: Text(
                      'Meal Plans, Workout plans, and more. Start a plan, follow along, and reach your goals',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text('Filter By:'),
            ),
            const FilterOptions(),
            const SizedBox(height: 15),
            const Divider(
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                'Available Plans: ',
                style: TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterOptions extends StatefulWidget {
  const FilterOptions({Key? key}) : super(key: key);

  @override
  State<FilterOptions> createState() => _FilterOptionsState();
}

class _FilterOptionsState extends State<FilterOptions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: Colors.black45,
                  backgroundColor: Colors.black12,
                  side: const BorderSide(
                    color: Colors.black45,
                  )),
              onPressed: () {},
              child: const Text('Free'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: Colors.black45,
                  backgroundColor: Colors.black12,
                  side: const BorderSide(
                    color: Colors.black45,
                  )),
              onPressed: () {},
              child: const Text('Meal Plan'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: Colors.black45,
                  backgroundColor: Colors.black12,
                  side: const BorderSide(
                    color: Colors.black45,
                  )),
              onPressed: () {},
              child: const Text('Nutrition'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: Colors.black45,
                  backgroundColor: Colors.black12,
                  side: const BorderSide(
                    color: Colors.black45,
                  )),
              onPressed: () {},
              child: const Text('Walking'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: Colors.black45,
                  backgroundColor: Colors.black12,
                  side: const BorderSide(
                    color: Colors.black45,
                  )),
              onPressed: () {},
              child: const Text('Workout'),
            ),
          ),
        ],
      ),
    );
  }
}
