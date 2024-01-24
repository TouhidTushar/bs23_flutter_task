import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:bs23_flutter_task/global/router/base_router.gr.dart';
import 'package:bs23_flutter_task/global/widgets/layouts/base_layout.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: 'Home',
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            context.router.push(const SettingsRoute());
          },
        ),
      ],
      child: const Text('Home View'),
    );
  }
}
