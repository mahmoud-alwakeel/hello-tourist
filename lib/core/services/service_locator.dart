import 'package:get_it/get_it.dart';
import 'package:hello_tourist/core/database/cache/cahce_helper.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}