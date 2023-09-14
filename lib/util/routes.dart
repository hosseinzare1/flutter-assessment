import 'package:assessment/presentation/ui/screen/home_screen.dart';
import 'package:assessment/presentation/ui/screen/post_screen.dart';
import 'package:assessment/presentation/ui/screen/profile_screen.dart';
import 'package:assessment/util/constants.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerConfig = GoRouter(
  initialLocation: homeScreenPath,
  routes: [
    GoRoute(
      path: homeScreenPath,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: profileScreenPath,
      builder: (context, state) {
        var extras = state.extra as ProfileScreenExtras;
        return ProfileScreen(
          extras: extras,
        );
      },
    ),
    GoRoute(
      path: postScreenPath,
      builder: (context, state) {
        var extras = state.extra as PostScreenExtras;
        return PostScreen(
          extras: extras,
        );
      },
    ),
  ],
);
