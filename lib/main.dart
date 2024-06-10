import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purr_pedia_app/app/app.dart';
import 'package:purr_pedia_app/core/config/di/di.dart';
import 'package:purr_pedia_app/core/config/env/environments.dart';
import 'package:purr_pedia_app/core/types/enum/env_types.dart';

Future<void> main() async {
  await Environment().initConfig(env: EnvType.dev);
  DependencyInjection().onInit();
  runApp(const ProviderScope(child: App()));
}
