import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/failures/failure.dart';
import '../models/summary_model.dart';

class SummaryRepository {
  final Dio _client;

  const SummaryRepository(this._client);

  Future<Either<Failure, SummaryModel>> global() async {
    return await _fowardedCallFetchSummary('/covid-19/all');
  }

  Future<Either<Failure, SummaryModel>> byCountry(String id) async {
    return await _fowardedCallFetchSummary('/covid-19/countries/$id');
  }

  Future<Either<Failure, SummaryModel>> _fowardedCallFetchSummary(
    String url,
  ) async {
    try {
      final response = await _client.get(url);
      final responseJson = response.data;
      final summary = SummaryModel.fromJson(responseJson);
      return right(summary);
    } on DioError catch (err) {
      return left(
        ApiFailure(err),
      );
    }
  }
}
