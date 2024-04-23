import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';

class ShoppingCartInfo {
  final List<Movie> movies;
  final Map<String, int> totalMap;
  final Movie? recentAddedItem;

  ShoppingCartInfo(
      {required this.movies, required this.totalMap, this.recentAddedItem});

  ShoppingCartInfo copyWith(
      {List<Movie>? movies,
      Map<String, int>? totalMap,
      Movie? recentAddedItem}) {
    return ShoppingCartInfo(
        movies: movies ?? this.movies,
        totalMap: totalMap ?? this.totalMap,
        recentAddedItem: recentAddedItem ?? this.recentAddedItem);
  }
}
