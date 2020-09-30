import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/config/api_config.dart';
import 'cubits/country/country_cubit.dart';
import 'cubits/historic/historic_cubit.dart';
import 'cubits/summary/summary_cubit.dart';
import 'home_page.dart';
import 'repositories/country_repository.dart';
import 'repositories/historic_repository.dart';
import 'repositories/summary_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio(ApiConfig())),
        Bind((i) => CountryRepository(i.get<Dio>())),
        Bind((i) => CountryCubit(i.get<CountryRepository>())),
        Bind((i) => SummaryRepository(i.get<Dio>())),
        Bind((i) => HistoricRepository(i.get<Dio>())),
        Bind(
          (i) => SummaryCubit(i.get<SummaryRepository>()),
          singleton: false,
        ),
        Bind(
          (i) => HistoricCubit(i.get<HistoricRepository>()),
          singleton: false,
        ),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => HomePage()),
      ];
}
