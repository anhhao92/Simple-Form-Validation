import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_listing_repo.g.dart';

@riverpod
Future<List<Movie>> movieListingRepository(
    MovieListingRepositoryRef ref) async {
  final response = await http.post(
      Uri.parse('https://www.lottecinemavn.com/LCWS/Common/MainData.aspx'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
      },
      body: 'paramList=${jsonEncode({
            'MethodName': 'GetMainPlayMovies',
            'channelType': 'HO',
            'movieSeq': '1',
            'osVersion': 'iOS 18',
            'osType': 'Unix'
          })}');
  final json = jsonDecode(response.body);
  return (json["Movies"]["Items"] as List)
      .cast<Map<String, Object?>>()
      .map(Movie.fromJson)
      .toList();
}
