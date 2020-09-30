import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class TextTabBarWidget extends StatelessWidget {
  final List<String> labels;
  final TabController tabController;

  const TextTabBarWidget({
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
    return TabBar(
      controller: tabController,
      indicatorColor: Colors.transparent,
      indicator: BoxDecoration(
        color: Colors.transparent,
      ),
      labelStyle: AppTypography.bodyBold,
      labelPadding: const EdgeInsets.all(4),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white60,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: _turnLabelsIntoWidgets,
    );
  }
}
