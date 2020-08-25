import 'dart:convert';

import 'package:covid_app/app/core/failures/failure.dart';
import 'package:covid_app/app/modules/home/cubits/country/country_cubit.dart';
import 'package:covid_app/app/modules/home/models/country_model.dart';
import 'package:covid_app/app/modules/home/repositories/country_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../fixtures/fixture_reader.dart';

class CountryRepositoryMock extends Mock implements CountryRepository {}

main() {
  CountryRepositoryMock repository;
  CountryCubit cubit;
  setUp(
    () {
      repository = CountryRepositoryMock();
      cubit = CountryCubit(repository);
    },
  );

  group(
    'get all countries',
    () {
      List<CountryModel> countries;
      Failure failure;
      setUp(
        () {
          final countriesJson = json.decode(
            fixtureReader('repositories/countries_repository.json'),
          ) as List;
          countries = countriesJson
              .map<CountryModel>(
                (json) => CountryModel.fromJson(json),
              )
              .toList();
          failure = Failure.apiFailure(DioError());
        },
      );
      test(
        'last is state is load success with countries model',
        () async {
          when(repository.fetchAll()).thenAnswer(
            (_) async => right(countries),
          );
          await cubit.fetchAllCountries();
          expect(cubit.state, CountryState.loadSuccess(countries));
        },
      );

      test(
        'last is state is load failure with failure',
        () async {
          when(repository.fetchAll()).thenAnswer(
            (_) async => left(failure),
          );
          await cubit.fetchAllCountries();
          expect(cubit.state, CountryState.loadFailure(failure));
        },
      );
    },
  );
}
