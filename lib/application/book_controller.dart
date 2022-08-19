import 'package:arich_sample/domain/book/book.dart';
import 'package:arich_sample/domain/book/book_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bookControllerProvider =
    Provider.autoDispose((ref) => BookController(ref.read));

class BookController {
  final Reader _read;

  BookController(this._read);

  Future<List<Book>> getBooks() {
    final repository = _read(bookRepositoryProvider);
    return repository.getBooks();
  }
}
