import 'dart:convert';

import 'package:covid_app/app/core/failures/failure.dart';
import 'package:covid_app/app/modules/home/models/summary_model.dart';
import 'package:covid_app/app/modules/home/repositories/summary_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';

class ClientHttpMock extends Mock implements Dio {}

main() {
  ClientHttpMock client;
  SummaryRepository repository;
  setUp(
    () {
      client = ClientHttpMock();
      repository = SummaryRepository(client);
    },
  );
  group(
    'global summary tests',
    () {
      Map<String, dynamic> responseJson;
      setUp(
        () {
          responseJson = json.decode(
            fixtureReader("repositories/country_summary_repository.json"),
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
          verify(client.get('/covid-19/all'));
          expect(call, isA<Right<Failure, SummaryModel>>());
        },
      );

      test(
        'unsuccessful call',
        () async {
          when(client.get(any)).thenThrow(
            DioError(),
          );
          final call = await repository.global();
          verify(client.get('/covid-19/all'));
          expect(call, isA<Left<Failure, SummaryModel>>());
        },
      );
    },
  );

  group(
    'country summary tests',
    () {
      String countryId;
      Map<String, dynamic> jsonResponse;
      setUp(
        () {
          countryId = '4';
          jsonResponse = json.decode(
            fixtureReader('repositories/country_summary_repository.json'),
          );
        },
      );

      test(
        'successful call',
        () async {
          when(client.get(any)).thenAnswer(
            (_) async => Response(data: jsonResponse),
          );
          final call = await repository.byCountry(countryId);
          verify(client.get('/covid-19/countries/$countryId'));
          expect(call, isA<Right<Failure, SummaryModel>>());
        },
      );

      test(
        'unsuccessful call',
        () async {
          when(client.get(any)).thenThrow(
            DioError(),
          );
          final call = await repository.byCountry(countryId);
          verify(client.get('/covid-19/countries/$countryId'));
          expect(call, isA<Left<Failure, SummaryModel>>());
        },
      );
    },
  );
}
