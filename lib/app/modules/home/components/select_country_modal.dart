import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/theme/app_theme.dart';
import '../cubits/country/country_cubit.dart';
import '../models/country_model.dart';
import '../utils/filters.dart';
import '../utils/handle_keyboard.dart';
import '../widgets/error_template_widget.dart';
import '../widgets/label_country_widget.dart';
import '../widgets/search_text_field_widget.dart';

class SelectCountryModal extends StatefulWidget {
  @override
  _SelectCountryModalState createState() => _SelectCountryModalState();
}

class _SelectCountryModalState extends State<SelectCountryModal> {
  final _countryCubit = Modular.get<CountryCubit>();
  TextEditingController _searchController;
  String _patternToFilter = '';

  @override
  void initState() {
    super.initState();
    _countryCubit.state.maybeMap(
      orElse: () => _countryCubit.fetchAllCountries(),
      loadInProgress: (_) {},
      loadSuccess: (_) {},
    );
    _searchController = TextEditingController();
    _searchController.addListener(_handleFilter);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _handleFilter() {
    setState(() => _patternToFilter = _searchController.text);
  }

  void _handleSelectedCountry(CountryModel country) {
    _countryCubit.changeSelectedCountry(country);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => HandleKeyboard.hide(context),
        child: BlocBuilder<CountryCubit, CountryState>(
          cubit: _countryCubit,
          builder: (_, state) {
            return AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              transitionBuilder: (widget, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: widget,
                );
              },
              child: state.map(
                started: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                loadInProgress: (_) => Center(
                  child: CircularProgressIndicator(),
                ),
                loadSuccess: (data) => _buildLoadSuccess(
                  List.from(data.countries),
                  _patternToFilter,
                ),
                loadFailure: (_) => ErrorTemplateWidget(
                  buttonTextColor: Colors.white,
                  buttonBackgroundColor: AppColors.darkPurple,
                  iconColor: AppColors.darkPurple,
                  message: 'There was an error when'
                      ' trying to get the countries',
                  refreshAction: () async =>
                      await _countryCubit.fetchAllCountries(),
                  textColor: Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildLoadSuccess(
    List<CountryModel> countries, [
    String patterToFilter = '',
  ]) {
    List<CountryModel> filteredCountries = countries;
    if (patterToFilter.isNotEmpty) {
      filteredCountries = Filters.countriesByName(
        countries: filteredCountries,
        pattern: patterToFilter,
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: SearchTextFieldWidget(
            controller: _searchController,
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16),
            physics: BouncingScrollPhysics(),
            itemBuilder: (_, index) {
              return LabelCountryWidget(
                flagUrl: filteredCountries[index].flagUrl,
                name: filteredCountries[index].country,
                onTap: () => _handleSelectedCountry(
                  filteredCountries[index],
                ),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemCount: filteredCountries.length,
          ),
        ),
      ],
    );
  }
}
