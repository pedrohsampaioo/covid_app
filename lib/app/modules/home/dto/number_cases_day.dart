import 'package:flutter/foundation.dart';

class NumberCasesDay {
  final DateTime day;
  final int number;

  NumberCasesDay({
    @required this.day,
    @required this.number,
  })  : assert(day != null),
        assert(number != null);
}
