import 'package:auto_route/auto_route.dart';
import 'package:temp/src/auth/presentation/screens/login_screen.dart';
import 'package:temp/src/auth/presentation/screens/sign_up_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        ),
      ];
}
