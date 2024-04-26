import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import 'package:movie_booking/src/app.dart';
import 'package:movie_booking/src/features/movie_listing/data/movie_listing_repo.dart';
import 'package:movie_booking/src/features/movie_listing/domain/movie.dart';

void main() {
  group('MyApp', () {
    testWidgets(
        'should display a grid of now showing movie and user tap buy a ticket',
        (WidgetTester tester) async {
      // Define a Widget
      final myWidget = ProviderScope(
        overrides: [
          movieListingRepositoryProvider.overrideWith(
            (ref) => ([
              Movie(
                  releaseDate: '20241212',
                  posterURL: 'http://localhost/a.jpg',
                  movieName: 'Movie 1'),
              Movie(
                  releaseDate: '20241111',
                  posterURL: 'http://localhost/a.jpg',
                  movieName: 'Movie 2'),
            ]),
          )
        ],
        child: const MyApp(),
      );

      // Build myWidget and trigger a frame.
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(myWidget);
        expect(find.byType(TextButton), findsExactly(2));
        expect(find.widgetWithText(Badge, "0"), findsOneWidget);
      });
    });

    testWidgets(
        'should update shopping cart badge total when tapping buy ticket button',
        (WidgetTester tester) async {
      final myWidget = ProviderScope(
        overrides: [
          movieListingRepositoryProvider.overrideWith(
            (ref) => ([
              Movie(
                  releaseDate: '20241212',
                  posterURL: 'http://localhost/a.jpg',
                  movieName: 'Movie 1'),
            ]),
          )
        ],
        child: const MyApp(),
      );

      // Build myWidget and trigger a frame.
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(myWidget);
        final buyBtn = find.byType(TextButton);
        // Flush all animation
        await tester.pumpAndSettle();
        await tester.tap(buyBtn);
        // Rebuild the widget with the new item.
        await tester.pumpAndSettle();
        expect(find.widgetWithText(Badge, "1"), findsOneWidget);
      });
    });
  });
}
