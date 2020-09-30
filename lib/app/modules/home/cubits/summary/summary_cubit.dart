import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failures/failure.dart';
import '../../models/summary_model.dart';
import '../../repositories/summary_repository.dart';

part 'summary_cubit.freezed.dart';
part 'summary_state.dart';

class SummaryCubit extends Cubit<SummaryState> implements Disposable {
  SummaryCubit(this._repository) : super(SummaryState.started());
  final SummaryRepository _repository;

  Future<void> global() async {
    await _forwardedCallToFetchSummary(
      _repository.global,
    );
  }

  Future<void> byCountry(String id) async {
    await _forwardedCallToFetchSummary(
      () => _repository.byCountry(id),
    );
  }

  Future<void> _forwardedCallToFetchSummary(
    Future<Either<Failure, SummaryModel>> Function() call,
  ) async {
    emit(SummaryState.loadInProgress());
    final failureOrSuccess = await call();
    failureOrSuccess.fold(
      (failure) => emit(SummaryState.loadFailure(failure)),
      (data) => emit(SummaryState.loadSuccess(data)),
    );
  }

  @override
  void dispose() {
    close();
  }
}
