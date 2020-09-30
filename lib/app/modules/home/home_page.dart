import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/theme/app_theme.dart';
import 'components/rounded_tab_view_component.dart';
import 'components/select_country_modal.dart';
import 'cubits/country/country_cubit.dart';
import 'models/country_model.dart';
import 'widgets/select_country_widget.dart';

class HomePage extends StatelessWidget {
  final _countryCubit = Modular.get<CountryCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurple,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeader(context),
              const SizedBox(height: 16),
              Expanded(child: RoundedTabViewComponent()),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Statistics",
            style: AppTypography.headingBold6.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: BlocBuilder<CountryCubit, CountryState>(
              cubit: _countryCubit,
              builder: (_, state) {
                final selectedCountry = state.maybeMap<Option<CountryModel>>(
                  orElse: () => none(),
                  loadSuccess: (data) => data.selectedCountry,
                );
                return SelectCountryWidget(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (_) => SelectCountryModal(),
                  ),
                  selectedCountry: selectedCountry,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
