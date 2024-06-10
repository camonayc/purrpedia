import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:purr_pedia_app/core/config/design/gen/assets.gen.dart';
import 'package:purr_pedia_app/core/config/design/gen/colors.gen.dart';
import 'package:purr_pedia_app/core/config/router/routes.name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => context.pushReplacementNamed(AppScreens.landingScreen),
    );
    return Scaffold(
      backgroundColor: ColorsToken.primary,
      body: Center(
        child: AssetsToken.images.appIcon.image(),
      ),
    );
  }
}
