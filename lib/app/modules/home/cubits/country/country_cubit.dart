import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failures/failure.dart';
import '../../models/country_model.dart';
import '../../repositories/country_repository.dart';

part 'country_cubit.freezed.dart';
part 'country_state.dart';

class CountryCubit extends Cubit<CountryState> {
  final CountryRepository _repository;
  CountryCubit(this._repository) : super(CountryState.started());

  Future<void> fetchAllCountries() async {
    emit(CountryState.loadInProgress());
    final successOrFailure = await _repository.fetchAll();
    successOrFailure.fold(
      (failure) => emit(
        CountryState.loadFailure(failure),
      ),
      (countries) => emit(
        CountryState.loadSuccess(countries),
      ),
    );
  }
}
