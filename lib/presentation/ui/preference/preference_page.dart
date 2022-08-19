import 'package:arich_sample/presentation/common/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

class PreferencePage extends HookConsumerWidget {
  const PreferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);
    final themeNotifier = ref.watch(themeNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Preference'),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            tiles: [
              SettingsTile(
                title: const Text('Theme'),
                value: theme.maybeWhen(
                  data: (data) => Text(data.name),
                  orElse: () => const Text('loading...'),
                ),
                onPressed: (context) {
                  themeNotifier.switchTheme();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
