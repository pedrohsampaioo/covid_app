import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_theme.dart';
import '../cubits/country/country_cubit.dart';
import '../cubits/summary/summary_cubit.dart';
import '../models/summary_model.dart';
import 'country_not_selected_widget.dart';
import 'error_template_widget.dart';
import 'information_card_widget.dart';

class SummaryCountryWidget extends StatefulWidget {
  final SummaryCubit summaryCubit;
  final CountryCubit countryCubit;

  const SummaryCountryWidget({
    Key key,
    @required this.summaryCubit,
    @required this.countryCubit,
  })  : assert(summaryCubit != null),
        assert(countryCubit != null),
        super(key: key);

  @override
  _SummaryCountryWidgetState createState() => _SummaryCountryWidgetState();
}

class _SummaryCountryWidgetState extends State<SummaryCountryWidget> {
  @override
  void initState() {
    super.initState();
    widget.countryCubit.state.maybeMap(
      orElse: () {},
      loadSuccess: (data) {
        data.selectedCountry.map(
          (country) => widget.summaryCubit.state.maybeMap(
            orElse: () => widget.summaryCubit.byCountry(
              country.id,
            ),
            loadSuccess: (_) {},
            loadInProgress: (_) {},
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CountryCubit, CountryState>(
      cubit: widget.countryCubit,
      listener: (_, state) {
        state.maybeMap(
          orElse: () {},
          loadSuccess: (data) => data.selectedCountry.map(
            (country) => widget.summaryCubit.byCountry(country.id),
          ),
        );
      },
      builder: (_, state) {
        return state.map<Widget>(
          started: (_) => CountryNotSelectedWidget(),
          loadInProgress: (_) => CountryNotSelectedWidget(),
          loadSuccess: (data) => data.selectedCountry.fold(
            () => CountryNotSelectedWidget(),
            (country) => _buildSummaryBlocBuilder(
              summaryCubit: widget.summaryCubit,
              countryId: country.id,
            ),
          ),
          loadFailure: (_) => CountryNotSelectedWidget(),
        );
      },
    );
  }

  Widget _buildSummaryBlocBuilder({
    @required SummaryCubit summaryCubit,
    @required String countryId,
  }) {
    return BlocBuilder<SummaryCubit, SummaryState>(
      cubit: summaryCubit,
      builder: (_, state) {
        return AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (widget, animation) {
            return FadeTransition(
              opacity: animation,
              child: widget,
            );
          },
          child: state.map<Widget>(
            started: (_) => Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            loadInProgress: (_) => Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            loadSuccess: (data) => _buildInformation(data.data),
            loadFailure: (_) => ErrorTemplateWidget(
              refreshAction: () async =>
                  await summaryCubit.byCountry(countryId),
              message:
                  'There was an error when' ' trying to get the informations',
              iconColor: Colors.white,
              textColor: Colors.white,
              buttonBackgroundColor: Colors.white,
              buttonTextColor: Colors.black,
            ),
          ),
        );
      },
    );
  }

  Widget _buildInformation(SummaryModel summary) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.center,
      runSpacing: 4,
      spacing: 4,
      children: <InformationCardWidget>[
        InformationCardWidget(
          amount: summary.cases,
          title: 'Cases',
          backgroundColor: AppColors.yellow,
        ),
        InformationCardWidget(
          amount: summary.todayCases,
          title: 'Today Cases',
          backgroundColor: AppColors.red,
        ),
        InformationCardWidget(
          amount: summary.deaths,
          title: 'Deaths',
          backgroundColor: AppColors.green,
        ),
        InformationCardWidget(
          amount: summary.todayDeaths,
          title: 'Today Deaths',
          backgroundColor: AppColors.blue,
        ),
        InformationCardWidget(
          amount: summary.recovered,
          title: 'Recovered',
          backgroundColor: AppColors.purple,
        ),
        InformationCardWidget(
          amount: summary.todayRecovered,
          title: 'Today Recovered',
          backgroundColor: AppColors.yellow,
        ),
        InformationCardWidget(
          amount: summary.tests,
          title: 'Tests',
          backgroundColor: AppColors.red,
        ),
      ]..sort(
          (previous, next) => previous.title.compareTo(next.title),
        ),
    );
  }
}
