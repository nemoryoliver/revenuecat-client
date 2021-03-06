import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegmentedSwitch extends StatelessWidget {
  final List<Tab> tabs;
  final int initialIndex;
  final ValueSetter<int> onChanged;
  final double fontSize;

  const SegmentedSwitch({
    Key key,
    this.tabs,
    this.initialIndex = 0,
    this.onChanged,
    this.fontSize = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: initialIndex,
      child: TabBar(
        tabs: tabs,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: fontSize),
        unselectedLabelColor: Colors.grey,
        isScrollable: true,
        onTap: onChanged,
        indicator: BubbleTabIndicator(
          indicatorHeight: 25.0,
          tabBarIndicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Get.theme.accentColor,
        ),
      ),
    );
  }
}
