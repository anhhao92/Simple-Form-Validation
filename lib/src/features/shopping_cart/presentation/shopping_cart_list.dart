import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_booking/src/features/shopping_cart/data/shopping_cart_repo.dart';

class ShoppingCartList extends ConsumerWidget {
  const ShoppingCartList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shoppingCartProvider);
    final movies = state.movies.keys.toList();

    return ListView.builder(
      itemExtent: 70,
      itemCount: state.movies.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.network(
          movies[index].posterURL,
        ),
        title: Text(
          movies[index].movieName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "${state.movies[movies[index]]} x 55.000 VND",
          style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            ref
                .read(shoppingCartProvider.notifier)
                .removeFromCard(movies[index]);
          },
        ),
      ),
    );
  }
}
