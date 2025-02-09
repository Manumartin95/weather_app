import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/di/dependency_injection.config.dart';

import 'dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init;
