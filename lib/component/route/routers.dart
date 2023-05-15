import 'package:auto_route/auto_route.dart';

import '../../pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    BasePage.route,
  ],
)
class $AppRouter {}
