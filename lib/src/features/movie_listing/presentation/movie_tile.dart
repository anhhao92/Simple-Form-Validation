import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_booking/src/features/shopping_cart/data/shopping_cart_repo.dart';
import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movie_booking/src/utils/date_format.dart';

class MovieTile extends ConsumerWidget {
  const MovieTile({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = AppLocalizations.of(context)!;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  fit: BoxFit.fitWidth, image: NetworkImage(movie.posterURL)),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.movieName,
                  style: const TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${t.releaseDate}: ${formatDate(movie.releaseDate)}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 80,
          height: 35,
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.limeAccent,
              ),
              onPressed: () {
                ref.read(shoppingCartProvider.notifier).addToCard(movie);
              },
              child: Text(t.buy)),
        ),
      ],
    );
  }
}
