import 'package:flutter/foundation.dart';

import '../utils/handle_conversion.dart';
import 'information_per_day_model.dart';

class HistoricModel {
  final String country;
  final List<InformationPerDayModel> cases;
  final List<InformationPerDayModel> deaths;
  final List<InformationPerDayModel> recovered;

  const HistoricModel({
    @required this.country,
    @required this.cases,
    @required this.deaths,
    @required this.recovered,
  })  : assert(country != null),
        assert(cases != null),
        assert(deaths != null),
        assert(recovered != null);

  factory HistoricModel.fromJsonCountry(Map<String, dynamic> json) {
    final country = json['country'] as String;
    final casesJson = json['timeline']['cases'] as Map;
    final deathsJson = json['timeline']['deaths'] as Map;
    final recoveredJson = json['timeline']['recovered'] as Map;
    final cases = HandleConversion.convertMapToInformationList(casesJson);
    final deaths = HandleConversion.convertMapToInformationList(deathsJson);
    final recovered =
        HandleConversion.convertMapToInformationList(recoveredJson);
    return HistoricModel(
      country: country,
      cases: cases,
      deaths: deaths,
      recovered: recovered,
    );
  }

  factory HistoricModel.fromJsonGlobal(Map<String, dynamic> json) {
    final country = 'Global';
    final casesJson = json['cases'] as Map;
    final deathsJson = json['deaths'] as Map;
    final recoveredJson = json['recovered'] as Map;
    final cases = HandleConversion.convertMapToInformationList(casesJson);
    final deaths = HandleConversion.convertMapToInformationList(deathsJson);
    final recovered =
        HandleConversion.convertMapToInformationList(recoveredJson);
    return HistoricModel(
      country: country,
      cases: cases,
      deaths: deaths,
      recovered: recovered,
    );
  }

  bool get hasData =>
      cases.isNotEmpty && deaths.isNotEmpty && recovered.isNotEmpty;

  HistoricModel copyWith({
    String country,
    List<InformationPerDayModel> cases,
    List<InformationPerDayModel> deaths,
    List<InformationPerDayModel> recovered,
  }) {
    return HistoricModel(
      country: country ?? this.country,
      cases: cases ?? this.cases,
      deaths: deaths ?? this.deaths,
      recovered: recovered ?? this.recovered,
    );
  }
}
