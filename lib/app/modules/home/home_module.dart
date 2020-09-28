import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/config/api_config.dart';
import 'cubits/country/country_cubit.dart';
import 'home_page.dart';
import 'repositories/country_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio(ApiConfig())),
        Bind((i) => CountryRepository(i.get<Dio>())),
        Bind((i) => CountryCubit(i.get<CountryRepository>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => HomePage()),
      ];
}
