import '../models/information_per_day_model.dart';

class HandleConversion {
  static List<InformationPerDayModel> convertMapToInformationList(
    Map<String, dynamic> json,
  ) {
    return json?.entries?.map((information) {
      final dateAsArray = information.key.trim().split('/');
      final month = dateAsArray[0].padLeft(2, '0');
      final day = dateAsArray[1].padLeft(2, '0');
      final year = dateAsArray[2].padLeft(2, '0');
      final date = DateTime.parse('20$year$month$day');
      return InformationPerDayModel(
        date: date,
        number: information.value.toString(),
      );
    })?.toList();
  }
}
