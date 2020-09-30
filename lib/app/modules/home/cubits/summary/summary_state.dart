part of 'summary_cubit.dart';

@freezed
abstract class SummaryState with _$SummaryState {
  const factory SummaryState.started() = SummaryStateStarted;
  const factory SummaryState.loadInProgress() =
      SummaryStateLoadInProgress;
  const factory SummaryState.loadSuccess(
    SummaryModel data,
  ) = SummaryStateLoadSuccess;
  const factory SummaryState.loadFailure(
    Failure failure,
  ) = SummaryStateLoadFailure;
}
