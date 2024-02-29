import 'package:apple_music_ui_test/widget/recommendation_field.dart';
import 'package:flutter/material.dart';
import 'package:apple_music_ui_test/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(color: Colors.black),
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SongsRecommendationField(
              songsFieldName: 'For You',
              songs: forYou,
            ),
            SongsRecommendationField(
              songsFieldName: 'Recently Played',
              songs: recentlyPlayed,
            ),
            AlbumsRecommendationField(
              albumsFieldName: 'New releases',
              albums: newReleases,
            ),
            SongsRecommendationField(
              songsFieldName: 'Top Picks',
              songs: topPicks,
            ),
          ],
        ),
      ),
    );
  }
}
