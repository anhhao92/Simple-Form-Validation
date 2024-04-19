// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      releaseDate: json['ReleaseDate'] as String,
      posterURL: json['PosterURL'] as String,
      movieName: json['MovieName'] as String,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'ReleaseDate': instance.releaseDate,
      'PosterURL': instance.posterURL,
      'MovieName': instance.movieName,
    };
