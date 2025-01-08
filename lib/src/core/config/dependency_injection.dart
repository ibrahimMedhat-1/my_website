import 'package:my_website/src/core/config/app_imports.dart';

final getIt = GetIt.instance;

Future<void> setUpLocators() async {
  /// login
  getIt.registerFactory(() => LayoutCubit());

  /// home page
  getIt.registerLazySingleton(() => HomePageCubit());
}
