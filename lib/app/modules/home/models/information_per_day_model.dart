import 'package:flutter/foundation.dart';

class InformationPerDayModel {
  final DateTime date;
  final String number;
  InformationPerDayModel({
    @required this.date,
    @required this.number,
  })  : assert(date != null),
        assert(number != null);
}
