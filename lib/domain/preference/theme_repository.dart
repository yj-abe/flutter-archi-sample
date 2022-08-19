import 'package:arich_sample/di.dart';
import 'package:arich_sample/domain/preference/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeRepositoryProvider =
    Provider.autoDispose((ref) => ThemeRepository(ref.read));

class ThemeRepository {
  final Reader _read;

  ThemeRepository(this._read);

  Future<void> setTheme(Theme theme) async {
    final sharedPreference = await _read(sharedPreferenceProvider.future);
    sharedPreference.setInt('theme', theme.index);
  }

  Future<Theme> getTheme() async {
    final sharedPreference = await _read(sharedPreferenceProvider.future);
    final index = sharedPreference.getInt('theme') ?? 0;
    return Theme.values[index];
  }
}
