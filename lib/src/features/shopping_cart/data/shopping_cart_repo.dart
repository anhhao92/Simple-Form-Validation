import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';
import 'package:movie_booking/src/features/shopping_cart/domain/shopping_cart_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_cart_repo.g.dart';

@riverpod
class ShoppingCart extends _$ShoppingCart {
  @override
  ShoppingCartInfo build() {
    return const ShoppingCartInfo(movies: {});
  }

  void addToCard(Movie movie) {
    state.movies.update(movie, (value) => value + 1, ifAbsent: () => 1);
    state = state.copyWith(movies: state.movies, recentAddedItem: movie);
  }

  void removeFromCard(Movie movie) {
    state.movies.remove(movie);
    state = state.copyWith(movies: state.movies);
  }
}
