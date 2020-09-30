import 'package:flutter/foundation.dart';

import 'information_per_day_model.dart';

class InformationUnionPerDay {
  final String country;
  final InformationPerDayModel cases;
  final InformationPerDayModel deaths;
  final InformationPerDayModel recovered;

  const InformationUnionPerDay({
    @required this.country,
    @required this.cases,
    @required this.deaths,
    @required this.recovered,
  })  : assert(country != null),
        assert(cases != null),
        assert(deaths != null),
        assert(recovered != null);
}
