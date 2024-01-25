import 'package:bs23_flutter_task/global/widgets/layouts/loading_layout.dart';
import 'package:bs23_flutter_task/src/home/bloc/repo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:bs23_flutter_task/main.dart';
import 'package:bs23_flutter_task/global/router/base_router.dart';
import 'package:bs23_flutter_task/src/settings/bloc/theme_cubit.dart';
import 'package:bs23_flutter_task/src/settings/bloc/language_cubit.dart';
import 'package:loader_overlay/loader_overlay.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  final BaseRouter _router = instance<BaseRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>.value(value: instance<ThemeCubit>()),
        BlocProvider<LanguageCubit>.value(value: instance<LanguageCubit>()),
        BlocProvider<RepoCubit>.value(value: instance<RepoCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ThemeCubit, ThemeState>(
            listener: (context, state) {
              if (state is SystemTheme) {
                setState(() {
                  _themeMode = ThemeMode.system;
                });
              } else if (state is LightTheme) {
                setState(() {
                  _themeMode = ThemeMode.light;
                });
              } else if (state is DarkTheme) {
                setState(() {
                  _themeMode = ThemeMode.dark;
                });
              }
            },
          ),
          BlocListener<LanguageCubit, LanguageState>(
            listener: (context, state) {
              if (state is EnglishLanguage) {
                BlocProvider.of<LanguageCubit>(context).setLanguage('en');
              } else if (state is BanglaLanguage) {
                BlocProvider.of<LanguageCubit>(context).setLanguage('bn');
              }
            },
          ),
        ],
        child: GlobalLoaderOverlay(
          useDefaultLoading: false,
          overlayWidgetBuilder: (_) => LoadingLayout(),
          child: MaterialApp.router(
            restorationScopeId: 'app',
            routerConfig: _router.config(),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''), // English, no country code
            ],
            onGenerateTitle: (BuildContext context) =>
                AppLocalizations.of(context)!.appTitle,
            theme: ThemeData(),
            darkTheme: ThemeData.dark(),
            themeMode: _themeMode,
            locale: const Locale('en'),
          ),
        ),
      ),
    );
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<Locale> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);

  @override
  Future<Locale> load(Locale locale) async {
    return locale;
  }

  @override
  bool shouldReload(LocalizationsDelegate<Locale> old) => false;
}
