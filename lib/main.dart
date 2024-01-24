import 'dart:developer';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';

import 'package:bs23_flutter_task/global/utils/dependency.dart';
import 'package:bs23_flutter_task/global/bloc/app_bloc_observer.dart';

final GetIt instance = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (FlutterErrorDetails details) {
    log('FlutterError.onError: $details', name: 'main');
  };

  Bloc.observer = AppBlocObserver();
  await injectDependencies(instance);
  runApp(const MyApp());
}
