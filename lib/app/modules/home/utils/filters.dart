import 'package:flutter/foundation.dart';

import '../models/country_model.dart';
import '../models/information_per_day_model.dart';

class Filters {
  static List<InformationPerDayModel> informationsByDate({
    @required List<InformationPerDayModel> informations,
    @required DateTime dateToFilter,
  }) {
    assert(informations != null);
    if (dateToFilter != null) {
      informations?.retainWhere(
        (element) =>
            element.date.day == dateToFilter.day &&
            element.date.month == dateToFilter.month &&
            element.date.year == dateToFilter.year,
      );
    }
    return informations;
  }

  static List<CountryModel> countriesByName({
    @required List<CountryModel> countries,
    @required String pattern,
  }) {
    final listToFilter = List<CountryModel>.from(countries);
    listToFilter.retainWhere(
      (elem) => elem.country.toLowerCase().contains(
            pattern.toLowerCase(),
          ),
    );
    return listToFilter;
  }
}
