import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_lib/domain/core/di/dipendency_injecteble.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjectable() async =>
    getIt.init(environment: Environment.prod);
