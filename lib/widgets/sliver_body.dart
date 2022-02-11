import 'package:flutter/material.dart';

import '../widgets/sliver_bar.dart';
import 'navigation_page_widgets.dart';

class SliverBody extends StatefulWidget {
  const SliverBody({Key? key, required this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  @override
  State<SliverBody> createState() => _SliverBodyState();
}

class _SliverBodyState extends State<SliverBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      widget.selectedIndex == 4
          ? const SliverToBoxAdapter(
              child: SizedBox(
                height: 0,
                width: 0,
              ),
            )
          : SliverBar(pageIndex: widget.selectedIndex),
      SliverList(
          delegate: SliverChildListDelegate([
        Column(
          children: widgetOptions.elementAt(widget.selectedIndex),
        )
      ]))
    ]);
  }
}
