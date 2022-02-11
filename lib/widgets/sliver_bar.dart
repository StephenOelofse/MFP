import 'package:flutter/material.dart';

class SliverBar extends StatefulWidget {
  const SliverBar({Key? key, required this.pageIndex}) : super(key: key);

  final int pageIndex;

  @override
  State<SliverBar> createState() => _SliverBarState();
}

class _SliverBarState extends State<SliverBar> {
  List<String> titles = ['myFitnessPal', 'Diary', 'Recipes', 'Plans', 'Me'];

  static const Color iconColor = Colors.black54;

  final List<List<Widget>> _widgets = [
    [
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.doorbell_outlined,
              color: iconColor,
              size: 20.0,
            ),
          )),
    ],
    [
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.create_outlined,
              color: iconColor,
              size: 20.0,
            ),
          )),
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.pie_chart_outline,
              color: iconColor,
              size: 20.0,
            ),
          )),
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.more_vert,
              color: iconColor,
              size: 20.0,
            ),
          )),
    ],
    [],
    []
  ];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(titles[widget.pageIndex]),
      foregroundColor: Colors.black,
      backgroundColor: Colors.grey[200],
      titleTextStyle: const TextStyle(color: Colors.black),
      actions: _widgets[widget.pageIndex],
    );
  }
}


// class MyAppBar extends StatefulWidget {
//   const MyAppBar({Key? key, required this.pageIndex}) : super(key: key);

//   final int pageIndex;

//   @override
//   State<MyAppBar> createState() => _MyAppBarState();
// }

// class _MyAppBarState extends State<MyAppBar> {
//   List<String> titles = ['Home', 'Diary', 'Recipes', 'Plans', 'Me'];

//   static const Color iconColor = Colors.black54;

//   final List<List<Widget>> _widgets = [
//     [
//       Padding(
//           padding: const EdgeInsets.only(right: 20.0),
//           child: GestureDetector(
//             onTap: () {},
//             child: const Icon(
//               Icons.doorbell_outlined,
//               color: iconColor,
//               size: 20.0,
//             ),
//           )),
//     ],
//     [
//       Padding(
//           padding: const EdgeInsets.only(right: 20.0),
//           child: GestureDetector(
//             onTap: () {},
//             child: const Icon(
//               Icons.create_outlined,
//               color: iconColor,
//               size: 20.0,
//             ),
//           )),
//       Padding(
//           padding: const EdgeInsets.only(right: 20.0),
//           child: GestureDetector(
//             onTap: () {},
//             child: const Icon(
//               Icons.pie_chart_outline,
//               color: iconColor,
//               size: 20.0,
//             ),
//           )),
//       Padding(
//           padding: const EdgeInsets.only(right: 20.0),
//           child: GestureDetector(
//             onTap: () {},
//             child: const Icon(
//               Icons.more_vert,
//               color: iconColor,
//               size: 20.0,
//             ),
//           )),
//     ],
//     [],
//     []
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(titles[widget.pageIndex]),
//       foregroundColor: Colors.black,
//       backgroundColor: Colors.grey[200],
//       titleTextStyle: const TextStyle(color: Colors.black),
//       actions: _widgets[widget.pageIndex],
//     );
//   }
// }