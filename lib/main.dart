import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/calories_provider.dart';
import './widgets/drawer.dart';
import 'widgets/sliver_body.dart';
import './widgets/plans_widgets.dart';
import './theme/custom_theme';

void main() {
  runApp(MaterialApp(
    theme: CustomTheme.lightTheme,
    title: 'myfitnesspal',
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 3
          ? AppBar(
              title: const Text('Plans', style: TextStyle(fontSize: 14)),
              backgroundColor: Colors.grey[200],
              foregroundColor: Colors.black,
            )
          : null,
      drawer: const SideDrawer(),
      body: Container(
        child: ChangeNotifierProvider<CalProvider>(
          create: (context) => CalProvider(),
          child: _selectedIndex == 3
              ? PlanScreen(widgetList: plansWidgets)
              : SliverBody(
                  selectedIndex: _selectedIndex,
                ),
        ),
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home_sharp),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            activeIcon: Icon(Icons.book),
            label: 'Diary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            activeIcon: Icon(Icons.food_bank),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_outlined),
            label: 'Plans',
            activeIcon: Icon(Icons.note),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            activeIcon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ThemeData.light().primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
