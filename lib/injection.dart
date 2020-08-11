import 'package:ddd_flutter_example/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configurationInjection(String env) {
  $initGetIt(getIt, environment: env);
}
