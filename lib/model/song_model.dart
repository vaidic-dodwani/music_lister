class Song {
  final String songName;
  final String songArtist;
  final String songLink;

  Song({
    required this.songName,
    required this.songArtist,
    required this.songLink,
  });

  Song copyWith({
    String? songName,
    String? songArtist,
    String? songLink,
  }) =>
      Song(
        songName: songName ?? this.songName,
        songArtist: songArtist ?? this.songArtist,
        songLink: songLink ?? this.songLink,
      );

  factory Song.fromJson(Map<String, dynamic> json) => Song(
        songName: json["song_name"],
        songArtist: json["song_artist"],
        songLink: json["song_link"],
      );

  Map<String, dynamic> toJson() => {
        "song_name": songName,
        "song_artist": songArtist,
        "song_link": songLink,
      };
}
