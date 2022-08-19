import 'package:arich_sample/domain/book/book.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bookRepositoryProvider =
    Provider.autoDispose((ref) => BookRepository(ref.read));

class BookRepository {
  final Reader _read;

  BookRepository(this._read);

  Future<List<Book>> getBooks() async {
    // final db = _read(firestoreProvider);
    // final books = (await db.collection('Books').get()).docs;
    // return books.map((e) => Book(id: e.id, name: e.get('name'))).toList();
    return const [Book(id: '1', name: 'Book1'), Book(id: '2', name: 'Book2')];
  }
}
