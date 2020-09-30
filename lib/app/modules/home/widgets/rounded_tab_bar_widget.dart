import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class RoundedTabBarWidget extends StatelessWidget {
  final List<String> labels;
  final TabController tabController;

  const RoundedTabBarWidget({
    Key key,
    @required this.labels,
    @required this.tabController,
  })  : assert(labels != null),
        assert(tabController != null),
        super(key: key);

  List<Text> get _turnLabelsIntoWidgets => labels
      .map(
        (label) => Text(label),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48),
        color: Colors.white24,
      ),
      child: TabBar(
        controller: tabController,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(48),
        ),
        labelPadding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        labelStyle: AppTypography.bodySmallBold,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: _turnLabelsIntoWidgets,
      ),
    );
  }
}
