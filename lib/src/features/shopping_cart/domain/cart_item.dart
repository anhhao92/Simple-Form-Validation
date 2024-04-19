import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';

class CartItem {
  final Movie movie;
  late int total;

  CartItem({required this.total, required this.movie});
}
