import 'dart:convert';

import 'package:covid_app/app/core/failures/failure.dart';
import 'package:covid_app/app/modules/home/models/historic_model.dart';
import 'package:covid_app/app/modules/home/repositories/historic_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';

class ClientHttpMock extends Mock implements Dio {}

main() {
  ClientHttpMock client;
  HistoricRepository repository;

  setUp(
    () {
      client = ClientHttpMock();
      repository = HistoricRepository(client);
    },
  );

  group(
    'global historic tests',
    () {
      Map<String, dynamic> responseJson;
      setUp(
        () {
          responseJson = json.decode(
            fixtureReader('repositories/global_historic_repository.json'),
          );
        },
      );

      test(
        'successful call',
        () async {
          when(client.get(any)).thenAnswer(
            (_) async => Response(data: responseJson),
          );
          final call = await repository.global();
          verify(client.get('/covid-19/historical/all'));
          expect(call, isA<Right<Failure, HistoricModel>>());
        },
      );

      test(
        'unsuccessful call',
        () async {
          when(client.get(any)).thenThrow(
            DioError(),
          );
          final call = await repository.global();
          verify(client.get('/covid-19/historical/all'));
          expect(call, isA<Left<Failure, HistoricModel>>());
        },
      );
    },
  );

  group(
    'country historic tests',
    () {
      Map<String, dynamic> responseJson;
      String countryId;
      setUp(
        () {
          responseJson = json.decode(
            fixtureReader('repositories/country_historic_repository.json'),
          );
          countryId = '4';
        },
      );

      test(
        'successful call',
        () async {
          when(client.get(any)).thenAnswer(
            (_) async => Response(data: responseJson),
          );
          final call = await repository.byCountry(countryId);
          verify(client.get('/covid-19/historical/$countryId'));
          expect(call, isA<Right<Failure, HistoricModel>>());
        },
      );

      test(
        'unsuccessful call',
        () async {
          when(client.get(any)).thenThrow(
            DioError(),
          );
          final call = await repository.byCountry(countryId);
          verify(client.get('/covid-19/historical/$countryId'));
          expect(call, isA<Left<Failure, HistoricModel>>());
        },
      );
    },
  );
}
