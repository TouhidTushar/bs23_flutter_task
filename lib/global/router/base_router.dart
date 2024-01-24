import 'package:auto_route/auto_route.dart';

import 'package:bs23_flutter_task/global/router/base_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'View,Route',
)
class BaseRouter extends $BaseRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          initial: true,
          page: HomeRoute.page,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: SettingsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
      ];
}
