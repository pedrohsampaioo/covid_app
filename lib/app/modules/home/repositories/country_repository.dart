import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/failures/failure.dart';
import '../models/country_model.dart';

class CountryRepository {
  final Dio _client;

  const CountryRepository(this._client);

  Future<Either<Failure, List<CountryModel>>> fetchAll() async {
    try {
      final response = await _client.get("/covid-19/countries");
      final responseJson = response.data as List;
      final countries = responseJson
          ?.map<CountryModel>(
            (country) => CountryModel.fromJson(country),
          )
          ?.toList();
      return right(countries);
    } on DioError catch (err) {
      return left(
        ApiFailure(err),
      );
    }
  }
}
