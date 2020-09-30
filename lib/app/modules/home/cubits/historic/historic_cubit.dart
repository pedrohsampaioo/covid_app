import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failures/failure.dart';
import '../../models/historic_model.dart';
import '../../repositories/historic_repository.dart';
import '../../utils/filters.dart';

part 'historic_cubit.freezed.dart';
part 'historic_state.dart';

class HistoricCubit extends Cubit<HistoricState> implements Disposable {
  HistoricCubit(this._repository) : super(HistoricState.started());
  final HistoricRepository _repository;

  Future<void> global([DateTime dateFilter]) async {
    await _forwardedCallFetchHistoric(
      _repository.global,
      dateFilter,
    );
  }

  Future<void> byCountry(
    String id, [
    DateTime dateFilter,
  ]) async {
    await _forwardedCallFetchHistoric(
      () => _repository.byCountry(id),
      dateFilter,
    );
  }

  Future<void> _forwardedCallFetchHistoric(
    Future<Either<Failure, HistoricModel>> Function() call, [
    DateTime dateFilter,
  ]) async {
    emit(HistoricState.loadInProgress());
    final failureOrSuccess = await call();
    failureOrSuccess.fold(
      (failure) => emit(HistoricState.loadFailure(failure)),
      (historic) {
        historic = _filterDate(
          historic: historic,
          dateFilter: dateFilter,
        );
        return emit(HistoricState.loadSuccess(historic));
      },
    );
  }

  HistoricModel _filterDate({
    @required HistoricModel historic,
    @required DateTime dateFilter,
  }) {
    if (dateFilter != null) {
      return historic.copyWith(
        cases: Filters.informationsByDate(
          informations: historic.cases,
          dateToFilter: dateFilter,
        ),
        deaths: Filters.informationsByDate(
          informations: historic.deaths,
          dateToFilter: dateFilter,
        ),
        recovered: Filters.informationsByDate(
          informations: historic.recovered,
          dateToFilter: dateFilter,
        ),
      );
    }
    return historic;
  }

  @override
  void dispose() {
    close();
  }
}
