import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';
import 'package:movie_booking/src/features/shopping_cart/domain/cart_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shopping_cart_repo.g.dart';

@riverpod
class ShoppingCart extends _$ShoppingCart {
  @override
  List<CartItem> build() {
    return [];
  }

  void addToCard(Movie movie) {
    var idx = state.indexWhere(
      (element) => element.movie.movieName == movie.movieName,
    );
    if (idx == -1) {
      state = [...state, CartItem(total: 1, movie: movie)];
    } else {
      final updatedItem = state[idx];
      updatedItem.total++;
      state = [...state];
    }
  }

  void removeFromCard(Movie movie) {
    state = [
      for (var m in state)
        if (m.movie.movieName != movie.movieName) m,
    ];
  }
}

@riverpod
(int, int) totalAmount(TotalAmountRef ref) {
  var movies = ref.watch(shoppingCartProvider);
  int amount = 0, total = 0;
  for (var m in movies) {
    amount += m.total * 55000;
    total += m.total;
  }
  return (amount, total);
}
