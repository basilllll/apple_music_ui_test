import 'package:apple_music_ui_test/widget/song_box.dart';
import 'package:flutter/material.dart';

class SongsRecommendationField extends StatelessWidget {
  const SongsRecommendationField(
      {required this.songsFieldName, required this.songs, super.key});

  final String songsFieldName;
  final List<Map<String, String>> songs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            songsFieldName,
            style: const TextStyle(
              fontSize: 27,
              color: Colors.white,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: songs.map((song) {
              return SongBox(
                songName: song['songName']!,
                artistName: song['artistName']!,
                songCover: song['songCover']!,
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}

class AlbumsRecommendationField extends StatelessWidget {
  const AlbumsRecommendationField({
    required this.albumsFieldName,
    required this.albums,
    super.key,
  });

  final String albumsFieldName;
  final List<Map<String, String>> albums;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            albumsFieldName,
            style: const TextStyle(
              fontSize: 27,
              color: Colors.white,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: albums.map((album) {
            return AlbumBox(
                albumName: album['albumName']!,
                artistName: album['artistName']!,
                albumCover: album['albumCover']!);
          }).toList()),
        )
      ],
    );
  }
}
