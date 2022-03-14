import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 200,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 35, right: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.person_outlined,
                          size: 35, color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child:
                          Text('Name', style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Text('x days streak, x kg lost',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('Try Premium for free!'),
            leading: const Icon(Icons.whatshot),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Diary'),
            leading: const Icon(Icons.book_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Plans'),
            leading: const Icon(Icons.note_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Recipe Discovery'),
            leading: const Icon(Icons.food_bank_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Progress'),
            leading: const Icon(Icons.bar_chart_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Workout Routines'),
            leading: const Icon(Icons.fitness_center),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Goals'),
            leading: const Icon(Icons.transgender),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Challenges'),
            leading: const Icon(Icons.cabin),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Nutrition'),
            leading: const Icon(Icons.pie_chart_outline),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Recipes, Meals, & Foods'),
            leading: const Icon(Icons.restaurant),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Apps and Devices'),
            leading: const Icon(Icons.dashboard_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Steps'),
            leading: const Icon(Icons.ac_unit),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Community'),
            leading: const Icon(Icons.house_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Reminders'),
            leading: const Icon(Icons.access_alarm_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Friends'),
            leading: const Icon(Icons.emoji_people),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Messages'),
            leading: const Icon(Icons.message_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Privacy Center'),
            leading: const Icon(Icons.privacy_tip_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Help'),
            leading: const Icon(Icons.help),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Sync'),
            leading: const Icon(Icons.sync),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
