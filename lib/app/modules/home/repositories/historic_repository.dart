import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../core/failures/failure.dart';
import '../models/historic_model.dart';

class HistoricRepository {
  final Dio _client;

  const HistoricRepository(this._client);

  Future<Either<Failure, HistoricModel>> byCountry(String id) async {
    return await _fowardedCallFetchHistoric(
      url: "/covid-19/historical/$id",
      convertToEntity: (Map<String, dynamic> json) =>
          HistoricModel.fromJsonCountry(json),
    );
  }

  Future<Either<Failure, HistoricModel>> global() async {
    return await _fowardedCallFetchHistoric(
      url: "/covid-19/historical/all",
      convertToEntity: (Map<String, dynamic> json) =>
          HistoricModel.fromJsonGlobal(json),
    );
  }

  Future<Either<Failure, HistoricModel>> _fowardedCallFetchHistoric({
    @required String url,
    @required HistoricModel Function(Map<String, dynamic>) convertToEntity,
  }) async {
    try {
      final response = await _client.get(url);
      final responseJson = response.data as Map;
      final historic = convertToEntity(responseJson);
      return right(historic);
    } on DioError catch (err) {
      return left(
        ApiFailure(err),
      );
    }
  }
}
