import 'package:arich_sample/presentation/ui/book/books_page.dart';
import 'package:arich_sample/presentation/ui/preference/preference_page.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: BooksPage, initial: true),
    AutoRoute(page: PreferencePage),
  ],
)
class $AppRouter {}
