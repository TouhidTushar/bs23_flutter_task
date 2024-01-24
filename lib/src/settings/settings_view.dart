import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bs23_flutter_task/src/settings/bloc/theme_cubit.dart';
import 'package:bs23_flutter_task/global/widgets/layouts/base_layout.dart';

@RoutePage()
class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  late ThemeCubit _themeCubit;

  @override
  void initState() {
    super.initState();
    _themeCubit = context.read<ThemeCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: 'Settings',
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.palette, size: 30),
                const SizedBox(width: 10),
                Text(
                  'Theme',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 10),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return RadioListTile<ThemeMode>(
                  title: const Text('System'),
                  value: ThemeMode.system,
                  groupValue: state is SystemTheme ? ThemeMode.system : null,
                  onChanged: (ThemeMode? value) {
                    _themeCubit.setTheme(value!);
                  },
                );
              },
            ),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return RadioListTile<ThemeMode>(
                  title: const Text('Light'),
                  value: ThemeMode.light,
                  groupValue: state is LightTheme ? ThemeMode.light : null,
                  onChanged: (ThemeMode? value) {
                    _themeCubit.setTheme(value!);
                  },
                );
              },
            ),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return RadioListTile<ThemeMode>(
                  title: const Text('Dark'),
                  value: ThemeMode.dark,
                  groupValue: state is DarkTheme ? ThemeMode.dark : null,
                  onChanged: (ThemeMode? value) {
                    _themeCubit.setTheme(value!);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
