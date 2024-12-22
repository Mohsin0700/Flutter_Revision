import 'package:api_crud/core/repository/post_repo.dart';
import 'package:api_crud/core/services/api_service.dart';
import 'package:api_crud/core/view_models/addunicorn_viewmodel.dart';
import 'package:api_crud/core/view_models/post_viewmodel.dart';
import 'package:api_crud/core/view_models/unicorn_viewmodel.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => PostRepo());
  locator.registerLazySingleton(() => PostViewModel());
  locator.registerLazySingleton(() => UnicornViewModel());
  locator.registerLazySingleton(() => AddUnicornViewModel());
}
