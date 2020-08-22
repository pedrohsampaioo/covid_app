import 'dart:convert';

import 'package:covid_app/app/core/failures/failure.dart';
import 'package:covid_app/app/modules/home/models/country_model.dart';
import 'package:covid_app/app/modules/home/repositories/country_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';

class ClientHttpMock extends Mock implements Dio {}

main() {
  CountryRepository repository;
  ClientHttpMock client;
  setUp(
    () {
      client = ClientHttpMock();
      repository = CountryRepository(client);
    },
  );

  group(
    'fetch all countries',
    () {
      List<dynamic> responseJson;
      setUp(
        () {
          responseJson = json.decode(
            fixtureReader('repositories/countries_repository.json'),
          );
        },
      );
      test(
        'successfull call',
        () async {
          when(client.get(any)).thenAnswer(
            (_) async => Response(data: responseJson),
          );
          final call = await repository.fetchAll();
          verify(client.get('/covid-19/countries'));
          expect(call, isA<Right<Failure, List<CountryModel>>>());
        },
      );

      test(
        'unsuccessfull call',
        () async {
          when(client.get(any)).thenThrow(
            DioError(),
          );
          final call = await repository.fetchAll();
          verify(client.get('/covid-19/countries'));
          expect(call, isA<Left<Failure, List<CountryModel>>>());
        },
      );
    },
  );
}
