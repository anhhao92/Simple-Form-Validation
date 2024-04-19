import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_booking/src/features/shopping_cart/data/shopping_cart_repo.dart';

class ShoppingCartFooter extends ConsumerWidget {
  const ShoppingCartFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var (total, _) = ref.watch(totalAmountProvider);

    return Container(
      color: Colors.amberAccent,
      padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppLocalizations.of(context)!.totalAmount,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Text(
            "$total VND",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
