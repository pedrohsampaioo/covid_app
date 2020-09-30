import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/app_theme.dart';
import '../cubits/historic/historic_cubit.dart';
import '../models/historic_model.dart';
import 'error_template_widget.dart';
import 'information_card_widget.dart';

class HistoricGlobalWidget extends StatefulWidget {
  final HistoricCubit historicCubit;
  final DateTime dateTimeFilter;

  const HistoricGlobalWidget({
    Key key,
    @required this.historicCubit,
    @required this.dateTimeFilter,
  })  : assert(historicCubit != null),
        assert(dateTimeFilter != null),
        super(key: key);

  @override
  _HistoricGlobalWidgetState createState() => _HistoricGlobalWidgetState();
}

class _HistoricGlobalWidgetState extends State<HistoricGlobalWidget> {
  @override
  void initState() {
    super.initState();
    widget.historicCubit.state.maybeMap(
      orElse: () => widget.historicCubit.global(
        widget.dateTimeFilter,
      ),
      loadInProgress: (_) {},
      loadSuccess: (_) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoricCubit, HistoricState>(
      cubit: widget.historicCubit,
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
              refreshAction: () async => await widget.historicCubit.global(
                widget.dateTimeFilter,
              ),
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
