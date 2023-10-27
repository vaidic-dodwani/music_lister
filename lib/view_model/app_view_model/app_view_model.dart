import 'package:flutter/material.dart';
import 'package:music_lister/model/playlist_model.dart';

class AppNotifier extends ChangeNotifier {
  LocalSongLists _localData = LocalSongLists(playlists: []);

  LocalSongLists get localData => _localData;
  set localData(LocalSongLists _) {
    _localData = _;
    notifyListeners();
  }

  void addPlaylist(Playlist playlist) {
    _localData.playlists.add(playlist);
    notifyListeners();
  }

  void removePlaylist(Playlist playlist) {
    _localData.playlists.remove(playlist);
    notifyListeners();
  }

  void editPlaylist(Playlist playlist, int index) {
    if (_localData.playlists.length > index) {
      final temp = _localData;
      temp.playlists.removeAt(index);
      temp.playlists.insert(index, playlist);
      notifyListeners();
    }
  }
}
