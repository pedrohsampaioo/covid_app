import 'package:flutter/foundation.dart';

class CountryModel {
  final String country;
  final String flagUrl;
  final String id;

  const CountryModel({
    @required this.country,
    @required this.flagUrl,
    @required this.id,
  })  : assert(country != null),
        assert(flagUrl != null),
        assert(id != null);

  factory CountryModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      CountryModel(
        country: json['country'],
        flagUrl: json['countryInfo']['flag'],
        id: json['countryInfo']['_id'].toString(),
      );
}
