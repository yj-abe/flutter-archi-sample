import 'package:arich_sample/domain/preference/theme.dart' as app_theme;
import 'package:arich_sample/presentation/common/theme_notifier.dart';
import 'package:arich_sample/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      theme: theme.maybeWhen(
        data: (data) => data == app_theme.Theme.light
            ? ThemeData.light()
            : ThemeData.dark(),
        orElse: () => ThemeData.light(),
      ),
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
    );
  }
}
