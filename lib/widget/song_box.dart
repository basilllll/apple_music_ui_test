import 'package:flutter/material.dart';

class SongBox extends StatelessWidget {
  const SongBox(
      {required this.songName,
      required this.artistName,
      required this.songCover,
      super.key});

  final String songName;
  final String artistName;
  final String songCover;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(0, 0, 0, 0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        onLongPress: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 180,
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  songCover,
                  width: 180,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 170,
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  songName,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 150,
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  artistName,
                  style: const TextStyle(
                    color: Color.fromARGB(192, 195, 195, 195),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AlbumBox extends StatelessWidget {
  const AlbumBox(
      {required this.albumName,
      required this.artistName,
      required this.albumCover,
      super.key});

  final String albumName;
  final String artistName;
  final String albumCover;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(0, 0, 0, 0),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onLongPress: () {},
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 220,
              height: 270,
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  albumCover,
                  width: 220,
                  height: 270,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 170,
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  albumName,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 170,
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  artistName,
                  style: const TextStyle(
                    color: Color.fromARGB(192, 195, 195, 195),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
