import 'package:arich_sample/domain/preference/theme.dart';
import 'package:arich_sample/domain/preference/theme_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeControllerProvider =
    Provider.autoDispose((ref) => ThemeController(ref.read));

class ThemeController {
  final Reader _read;

  ThemeController(this._read);

  Future<Theme> getTheme() {
    final themeRepository = _read(themeRepositoryProvider);
    return themeRepository.getTheme();
  }

  Future<Theme> switchTheme() async {
    final themeRepository = _read(themeRepositoryProvider);
    final current = await themeRepository.getTheme();
    final newTheme = current == Theme.light ? Theme.dark : Theme.light;
    themeRepository.setTheme(newTheme);
    return newTheme;
  }
}
