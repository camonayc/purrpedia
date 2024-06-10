import 'package:go_router/go_router.dart';
import 'package:purr_pedia_app/app/presentation/screen/screens.dart';
import 'package:purr_pedia_app/core/config/router/routes.name.dart';
import 'package:purr_pedia_app/core/config/router/routes.path.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: AppRoutes.splashScreen,
      name: AppScreens.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.landingScreen,
      name: AppScreens.landingScreen,
      builder: (context, state) => LandingScreen(),
    ),
    GoRoute(
      path: '${AppRoutes.detailScreen}/:breedId',
      name: AppScreens.detailScreen,
      builder: (context, state) {
        return DetailScreen(
          breedId: state.pathParameters['breedId'] ?? '',
        );
      },
    ),
  ],
);
