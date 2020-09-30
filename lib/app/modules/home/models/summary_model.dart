import 'package:flutter/foundation.dart';

class SummaryModel {
  final String cases;
  final String todayCases;
  final String deaths;
  final String todayDeaths;
  final String recovered;
  final String todayRecovered;
  final String active;
  final String tests;

  const SummaryModel({
    @required this.cases,
    @required this.todayCases,
    @required this.deaths,
    @required this.todayDeaths,
    @required this.recovered,
    @required this.todayRecovered,
    @required this.active,
    @required this.tests,
  })  : assert(cases != null),
        assert(todayCases != null),
        assert(deaths != null),
        assert(todayDeaths != null),
        assert(recovered != null),
        assert(todayRecovered != null),
        assert(active != null),
        assert(tests != null);

  factory SummaryModel.fromJson(Map<String, dynamic> json) => SummaryModel(
        cases: json['cases'].toString(),
        todayCases: json['todayCases'].toString(),
        deaths: json['deaths'].toString(),
        todayDeaths: json['todayDeaths'].toString(),
        recovered: json['recovered'].toString(),
        todayRecovered: json['todayRecovered'].toString(),
        active: json['active'].toString(),
        tests: json['tests'].toString(),
      );
}
