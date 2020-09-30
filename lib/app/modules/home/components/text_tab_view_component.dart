import 'package:flutter/material.dart';

import '../widgets/text_tab_bar_widget.dart';

class TextTabViewComponent extends StatefulWidget {
  final Widget widgetTotal;
  final Widget widgetToday;
  final Widget widgetYesterday;

  const TextTabViewComponent({
    Key key,
    @required this.widgetTotal,
    @required this.widgetToday,
    @required this.widgetYesterday,
  })  : assert(widgetToday != null),
        assert(widgetTotal != null),
        assert(widgetYesterday != null),
        super(key: key);

  @override
  _TextTabViewComponentState createState() => _TextTabViewComponentState();
}

class _TextTabViewComponentState extends State<TextTabViewComponent>
    with SingleTickerProviderStateMixin {
  TabController _textTabController;
  final textTabLabels = [
    "Total",
    "Today",
    "Yesterday",
  ];

  @override
  void initState() {
    super.initState();
    _textTabController = TabController(
      length: textTabLabels.length,
      initialIndex: 0,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _textTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        TextTabBarWidget(
          tabController: _textTabController,
          labels: textTabLabels,
        ),
        const SizedBox(height: 16),
        Expanded(
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            controller: _textTabController,
            children: [
              widget.widgetTotal,
              widget.widgetToday,
              widget.widgetYesterday,
            ],
          ),
        ),
      ],
    );
  }
}
