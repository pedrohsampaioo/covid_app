import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failures/failure.dart';
import '../../models/country_model.dart';
import '../../repositories/country_repository.dart';

part 'country_cubit.freezed.dart';
part 'country_state.dart';

class CountryCubit extends Cubit<CountryState> implements Disposable {
  final CountryRepository _repository;
  CountryCubit(this._repository) : super(CountryState.started());

  void changeSelectedCountry(CountryModel country) {
    state.maybeMap(
      orElse: () {},
      loadSuccess: (data) => emit(
        data.copyWith(
          selectedCountry: optionOf(country),
        ),
      ),
    );
  }

  Future<void> fetchAllCountries() async {
    emit(CountryState.loadInProgress());
    final successOrFailure = await _repository.fetchAll();
    successOrFailure.fold(
      (failure) => emit(
        CountryState.loadFailure(failure),
      ),
      (countries) => emit(
        CountryState.loadSuccess(
          countries: countries,
          selectedCountry: none(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    close();
  }
}
