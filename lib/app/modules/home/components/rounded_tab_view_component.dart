import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../cubits/country/country_cubit.dart';
import '../cubits/historic/historic_cubit.dart';
import '../cubits/summary/summary_cubit.dart';
import '../widgets/historic_country_widget.dart';
import '../widgets/historic_global_widget.dart';
import '../widgets/rounded_tab_bar_widget.dart';
import '../widgets/summary_country_widget.dart';
import '../widgets/summary_global_widget.dart';
import 'text_tab_view_component.dart';

class RoundedTabViewComponent extends StatefulWidget {
  @override
  _RoundedTabViewComponentState createState() =>
      _RoundedTabViewComponentState();
}

class _RoundedTabViewComponentState extends State<RoundedTabViewComponent>
    with SingleTickerProviderStateMixin {
  TabController roundedTabController;
  final _countrySummaryCubit = Modular.get<SummaryCubit>();
  final _globalSumaryCubit = Modular.get<SummaryCubit>();
  final _globalTodayHistoricCubit = Modular.get<HistoricCubit>();
  final _globalYesterdayHistoricCubit = Modular.get<HistoricCubit>();
  final _countryTodayHistoricCubit = Modular.get<HistoricCubit>();
  final _countryYesterdayHistoricCubit = Modular.get<HistoricCubit>();

  final _countryCubit = Modular.get<CountryCubit>();

  final roundedTabLabels = [
    "My Country",
    "Global",
  ];

  @override
  void initState() {
    super.initState();
    roundedTabController = TabController(
      length: roundedTabLabels.length,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    roundedTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundedTabBarWidget(
          labels: roundedTabLabels,
          tabController: roundedTabController,
        ),
        const SizedBox(height: 16),
        Expanded(
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            controller: roundedTabController,
            children: [
              TextTabViewComponent(
                widgetTotal: SummaryCountryWidget(
                  summaryCubit: _countrySummaryCubit,
                  countryCubit: _countryCubit,
                ),
                widgetToday: HistoricCountryWidget(
                  historicCubit: _countryTodayHistoricCubit,
                  countryCubit: _countryCubit,
                  dateTimeFilter: DateTime.now(),
                ),
                widgetYesterday: HistoricCountryWidget(
                  historicCubit: _countryYesterdayHistoricCubit,
                  countryCubit: _countryCubit,
                  dateTimeFilter: DateTime.now().subtract(
                    const Duration(days: 1),
                  ),
                ),
              ),
              TextTabViewComponent(
                widgetToday: HistoricGlobalWidget(
                  historicCubit: _globalTodayHistoricCubit,
                  dateTimeFilter: DateTime.now(),
                ),
                widgetTotal: SummaryGlobalWidget(
                  summaryCubit: _globalSumaryCubit,
                ),
                widgetYesterday: HistoricGlobalWidget(
                  historicCubit: _globalYesterdayHistoricCubit,
                  dateTimeFilter: DateTime.now().subtract(
                    const Duration(days: 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
