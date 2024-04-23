import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_booking/src/features/shopping_cart/data/shopping_cart_repo.dart';
import 'package:movie_booking/src/features/shopping_cart/presentation/shopping_cart_screen.dart';

class ShoppingCartBadge extends ConsumerWidget {
  const ShoppingCartBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(shoppingCartProvider);

    return Badge(
      alignment: Alignment.topLeft,
      label: Text('${state.total}'),
      child: IconButton(
          onPressed: () {
            Navigator.restorablePushNamed(
                context, ShoppingCartScreen.routeName);
          },
          icon: const Icon(Icons.shopping_cart)),
    );
  }
}
