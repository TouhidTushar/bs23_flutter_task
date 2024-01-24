import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bs23_flutter_task/global/router/base_router.dart';
import 'package:bs23_flutter_task/global/utils/local_storage.dart';
import 'package:bs23_flutter_task/src/settings/bloc/theme_cubit.dart';
import 'package:bs23_flutter_task/src/settings/bloc/language_cubit.dart';

Future<void> injectDependencies(GetIt instance) async {
  final prefs = await SharedPreferences.getInstance();
  instance.registerSingleton<LocalStorage>(
    LocalStorage(prefs: prefs),
  );

  instance.registerSingleton<BaseRouter>(
    BaseRouter(),
  );

  instance.registerSingleton<ThemeCubit>(
    ThemeCubit(),
  );

  instance.registerSingleton<LanguageCubit>(
    LanguageCubit(),
  );
}
