// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  @JsonKey(name: 'ReleaseDate')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'PosterURL')
  String get posterURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'MovieName')
  String get movieName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ReleaseDate') String releaseDate,
      @JsonKey(name: 'PosterURL') String posterURL,
      @JsonKey(name: 'MovieName') String movieName});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseDate = null,
    Object? posterURL = null,
    Object? movieName = null,
  }) {
    return _then(_value.copyWith(
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      posterURL: null == posterURL
          ? _value.posterURL
          : posterURL // ignore: cast_nullable_to_non_nullable
              as String,
      movieName: null == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ReleaseDate') String releaseDate,
      @JsonKey(name: 'PosterURL') String posterURL,
      @JsonKey(name: 'MovieName') String movieName});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseDate = null,
    Object? posterURL = null,
    Object? movieName = null,
  }) {
    return _then(_$MovieImpl(
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      posterURL: null == posterURL
          ? _value.posterURL
          : posterURL // ignore: cast_nullable_to_non_nullable
              as String,
      movieName: null == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl implements _Movie {
  _$MovieImpl(
      {@JsonKey(name: 'ReleaseDate') required this.releaseDate,
      @JsonKey(name: 'PosterURL') required this.posterURL,
      @JsonKey(name: 'MovieName') required this.movieName});

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  @JsonKey(name: 'ReleaseDate')
  final String releaseDate;
  @override
  @JsonKey(name: 'PosterURL')
  final String posterURL;
  @override
  @JsonKey(name: 'MovieName')
  final String movieName;

  @override
  String toString() {
    return 'Movie(releaseDate: $releaseDate, posterURL: $posterURL, movieName: $movieName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.posterURL, posterURL) ||
                other.posterURL == posterURL) &&
            (identical(other.movieName, movieName) ||
                other.movieName == movieName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, releaseDate, posterURL, movieName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
          {@JsonKey(name: 'ReleaseDate') required final String releaseDate,
          @JsonKey(name: 'PosterURL') required final String posterURL,
          @JsonKey(name: 'MovieName') required final String movieName}) =
      _$MovieImpl;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  @JsonKey(name: 'ReleaseDate')
  String get releaseDate;
  @override
  @JsonKey(name: 'PosterURL')
  String get posterURL;
  @override
  @JsonKey(name: 'MovieName')
  String get movieName;
  @override
  @JsonKey(ignore: true)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
