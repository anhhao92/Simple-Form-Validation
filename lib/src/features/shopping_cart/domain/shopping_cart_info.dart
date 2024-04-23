import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';

class ShoppingCartInfo {
  final Map<Movie, int> movies;
  final Movie? recentAddedItem;

  const ShoppingCartInfo({required this.movies, this.recentAddedItem});

  ShoppingCartInfo copyWith({Map<Movie, int>? movies, Movie? recentAddedItem}) {
    return ShoppingCartInfo(
        movies: movies ?? this.movies,
        recentAddedItem: recentAddedItem ?? this.recentAddedItem);
  }

  int get total => movies.isEmpty
      ? 0
      : movies.values.reduce((value, element) => value + element);
  int get amount => total * 55000;
}
