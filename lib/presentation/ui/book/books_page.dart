import 'package:arich_sample/application/book_controller.dart';
import 'package:arich_sample/presentation/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BooksPage extends HookConsumerWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(bookControllerProvider);
    final booksFuture = useFuture(useMemoized(() => controller.getBooks()));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
      ),
      body: booksFuture.connectionState == ConnectionState.done
          ? booksFuture.hasError
              ? const Center(
                  child: Text('Error'),
                )
              : ListView.builder(
                  itemCount: booksFuture.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    final books = booksFuture.data!;
                    return Text(books[index].name);
                  })
          : const Center(
              child: CircularProgressIndicator(),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.settings),
        onPressed: () {
          context.router.push(const PreferenceRoute());
        },
      ),
    );
  }
}
