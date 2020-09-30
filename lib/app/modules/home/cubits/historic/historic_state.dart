part of 'historic_cubit.dart';

@freezed
abstract class HistoricState with _$HistoricState {
  const factory HistoricState.started() = HistoricStateStarted;
  const factory HistoricState.loadInProgress() = HistoricStateLoadInProgress;
  const factory HistoricState.loadSuccess(
    HistoricModel information,
  ) = HistoricStateLoadSuccess;
  const factory HistoricState.loadFailure(
    Failure failure,
  ) = HistoricStateLoadFailure;
}
