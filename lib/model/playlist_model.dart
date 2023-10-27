import 'dart:convert';

import 'package:music_lister/model/song_model.dart';

LocalSongLists localStorageFromJson(String str) =>
    LocalSongLists.fromJson(json.decode(str));

String localStorageToJson(LocalSongLists data) => json.encode(data.toJson());

class LocalSongLists {
  final List<Playlist> playlists;

  LocalSongLists({
    required this.playlists,
  });

  LocalSongLists copyWith({
    List<Playlist>? playlists,
  }) =>
      LocalSongLists(
        playlists: playlists ?? this.playlists,
      );

  factory LocalSongLists.fromJson(Map<String, dynamic> json) => LocalSongLists(
        playlists: List<Playlist>.from(
            json["playlists"].map((x) => Playlist.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlists": List<dynamic>.from(playlists.map((x) => x.toJson())),
      };
}

class Playlist {
  final String name;
  final List<Song> songs;

  Playlist({
    required this.name,
    required this.songs,
  });

  Playlist copyWith({
    String? name,
    List<Song>? songs,
  }) =>
      Playlist(
        name: name ?? this.name,
        songs: songs ?? this.songs,
      );

  factory Playlist.fromJson(Map<String, dynamic> json) => Playlist(
        name: json["name"],
        songs: List<Song>.from(json["songs"].map((x) => Song.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "songs": List<dynamic>.from(songs.map((x) => x.toJson())),
      };
}
