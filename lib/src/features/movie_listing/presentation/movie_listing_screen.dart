import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movie_booking/src/features/movie_listing/data/movie_listing_repo.dart';
import 'package:movie_booking/src/features/movie_listing/presentation/movie_tile.dart';
import 'package:movie_booking/src/features/shopping_cart/presentation/shopping_cart_badge.dart';

class MovieListingScreen extends ConsumerWidget {
  const MovieListingScreen({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(movieListingRepositoryProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          AppLocalizations.of(context)!.nowShowing,
        ),
        actions: const [ShoppingCartBadge()],
      ),
      body: stateAsync.when(
          data: (data) => GridView.builder(
              padding: const EdgeInsets.all(4),
              itemCount: data.length,
              itemBuilder: (context, index) => MovieTile(movie: data[index]),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  crossAxisCount: 2)),
          error: (err, stack) => Text('Loading failed ${err.toString()}'),
          loading: () => const Text('Loading')),
    );
  }
}
