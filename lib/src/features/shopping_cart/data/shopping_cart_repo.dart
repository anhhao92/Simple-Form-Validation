import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';
import 'package:movie_booking/src/features/shopping_cart/domain/shopping_cart_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_cart_repo.g.dart';

@riverpod
class ShoppingCart extends _$ShoppingCart {
  @override
  ShoppingCartInfo build() {
    return ShoppingCartInfo(totalMap: {}, movies: []);
  }

  void addToCard(Movie movie) {
    var key = movie.movieName;

    state.totalMap.update(key, (value) => value + 1, ifAbsent: () {
      state.movies.add(movie);
      return 1;
    });
    state = state.copyWith(
        movies: state.movies, totalMap: state.totalMap, recentAddedItem: movie);
  }

  void removeFromCard(Movie movie) {
    state.totalMap.remove(movie.movieName);
    state.movies.removeWhere((value) => value.movieName == movie.movieName);
    state = state.copyWith(movies: state.movies, totalMap: state.totalMap);
  }
}

@riverpod
(int, int) totalAmount(TotalAmountRef ref) {
  var state = ref.watch(shoppingCartProvider);
  int amount = 0, total = 0;
  for (var e in state.totalMap.values) {
    amount += e * 55000;
    total += e;
  }
  return (amount, total);
}
