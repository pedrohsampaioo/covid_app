import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_theme.dart';
import '../cubits/country/country_cubit.dart';
import '../cubits/historic/historic_cubit.dart';
import '../models/historic_model.dart';
import 'country_not_selected_widget.dart';
import 'error_template_widget.dart';
import 'information_card_widget.dart';

class HistoricCountryWidget extends StatefulWidget {
  final HistoricCubit historicCubit;
  final DateTime dateTimeFilter;
  final CountryCubit countryCubit;

  const HistoricCountryWidget({
    Key key,
    @required this.historicCubit,
    @required this.dateTimeFilter,
    @required this.countryCubit,
  })  : assert(historicCubit != null),
        assert(dateTimeFilter != null),
        assert(countryCubit != null),
        super(key: key);

  @override
  _HistoricCountryWidgetState createState() => _HistoricCountryWidgetState();
}

class _HistoricCountryWidgetState extends State<HistoricCountryWidget> {
  @override
  void initState() {
    super.initState();
    widget.countryCubit.state.maybeMap(
      orElse: () {},
      loadSuccess: (data) {
        data.selectedCountry.map(
          (country) => widget.historicCubit.state.maybeMap(
            orElse: () => widget.historicCubit.byCountry(
              country.id,
              widget.dateTimeFilter,
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
            (country) => widget.historicCubit.byCountry(
              country.id,
              widget.dateTimeFilter,
            ),
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
              historicCubit: widget.historicCubit,
              countryId: country.id,
            ),
          ),
          loadFailure: (_) => CountryNotSelectedWidget(),
        );
      },
    );
  }

  Widget _buildSummaryBlocBuilder({
    @required HistoricCubit historicCubit,
    @required String countryId,
  }) {
    return BlocBuilder<HistoricCubit, HistoricState>(
      cubit: historicCubit,
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
            loadSuccess: (data) => _buildInformation(data.information),
            loadFailure: (_) => ErrorTemplateWidget(
              refreshAction: () async =>
                  await historicCubit.byCountry(countryId),
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

  Widget _buildInformation(HistoricModel historic) {
    if (historic.hasData) {
      return Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        runSpacing: 4,
        spacing: 4,
        children: <InformationCardWidget>[
          InformationCardWidget(
            amount: historic.cases[0].number,
            title: 'Cases',
            backgroundColor: AppColors.yellow,
          ),
          InformationCardWidget(
            amount: historic.deaths[0].number,
            title: 'Deaths',
            backgroundColor: AppColors.red,
          ),
          InformationCardWidget(
            amount: historic.recovered[0].number,
            title: 'Recovered',
            backgroundColor: AppColors.purple,
          ),
        ]..sort(
            (previous, next) => previous.title.compareTo(next.title),
          ),
      );
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'No information has been provided yet',
          textAlign: TextAlign.center,
          style: AppTypography.bodySemiBold.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
