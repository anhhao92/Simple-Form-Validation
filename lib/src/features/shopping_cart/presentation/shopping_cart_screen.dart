import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'shopping_cart_footer.dart';
import 'shopping_cart_list.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          AppLocalizations.of(context)!.cartTitle,
        ),
      ),
      body: const Column(
        children: [Expanded(child: ShoppingCartList()), ShoppingCartFooter()],
      ),
    );
  }
}
