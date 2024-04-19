import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    @JsonKey(name: 'ReleaseDate') required String releaseDate,
    @JsonKey(name: 'PosterURL') required String posterURL,
    @JsonKey(name: 'MovieName') required String movieName,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
