import 'package:arich_sample/application/theme_controller.dart';
import 'package:arich_sample/domain/preference/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeNotifierProvider =
    StateNotifierProvider.autoDispose<ThemeNotifier, AsyncValue<Theme>>(
        (ref) => ThemeNotifier(ref.read));

class ThemeNotifier extends StateNotifier<AsyncValue<Theme>> {
  final Reader _read;

  ThemeNotifier(this._read) : super(const AsyncValue.loading()) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final controller = _read(themeControllerProvider);
    final theme = await controller.getTheme();
    state = AsyncValue.data(theme);
  }

  Future<void> switchTheme() async {
    final controller = _read(themeControllerProvider);
    final theme = await controller.switchTheme();
    state = AsyncValue.data(theme);
  }
}
