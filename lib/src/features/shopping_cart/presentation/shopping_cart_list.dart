import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_booking/src/features/shopping_cart/data/shopping_cart_repo.dart';

class ShoppingCartList extends ConsumerWidget {
  const ShoppingCartList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shoppingCartProvider);

    return ListView.builder(
      itemExtent: 70,
      itemCount: state.movies.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.network(
          state.movies[index].posterURL,
        ),
        title: Text(
          state.movies[index].movieName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "${state.totalMap[state.movies[index].movieName]}x55.000 VND",
          style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            ref
                .read(shoppingCartProvider.notifier)
                .removeFromCard(state.movies[index]);
          },
        ),
      ),
    );
  }
}
