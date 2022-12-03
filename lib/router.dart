import 'package:auto_route/auto_route.dart';
import 'package:etiya_test_app/ui/screens/main_screen.dart';
import 'package:etiya_test_app/ui/screens/splash_screen.dart';
import 'package:etiya_test_app/ui/screens/user_details_screen.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: MainScreen),
    AutoRoute(page: UserDetailsScreen),
  ],
)
class $AppRouter {}
