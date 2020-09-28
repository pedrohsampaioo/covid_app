part of 'country_cubit.dart';

@freezed
abstract class CountryState with _$CountryState {
  const factory CountryState.started() = CountryStarted;
  const factory CountryState.loadInProgress() = CountryLoadInProgress;
  const factory CountryState.loadSuccess({
    @required List<CountryModel> countries,
    @required Option<CountryModel> selectedCountry,
  }) = CountryLoadSucces;
  const factory CountryState.loadFailure(
    Failure failure,
  ) = CountryLoadFailure;
}
