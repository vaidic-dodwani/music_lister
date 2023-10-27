import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:music_lister/model/song_model.dart';
import 'package:music_lister/utils/widgets/customtextfield.dart';
import 'package:music_lister/view_model/app_view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class AddNewSong extends StatefulWidget {
  const AddNewSong({super.key});

  @override
  State<AddNewSong> createState() => _AddNewSongState();
}

class _AddNewSongState extends State<AddNewSong> {
  TextEditingController songName = TextEditingController();
  
  TextEditingController artistName = TextEditingController();
  TextEditingController songLink = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [ CustomTextField(
          controller: songName,
          label: "Song Name",),
              const SizedBox(height: 16,),
               CustomTextField(
                controller: artistName,
                label: "Artist Name",),
              const SizedBox(height: 16,),
               CustomTextField(
                controller: songLink,
                label: "Song Link",),
              const SizedBox(height: 16,),
              ElevatedButton(
                // TODO:Add Primary Button Style here
                onPressed: (){
                  final prov = Provider.of<AppNotifier>(context,listen: false);
                  prov.songs.add(Song(songName: songName.text,songArtist: artistName.text,songLink: songLink.text));
                  prov.notifyListeners();
                  log(prov.getSongs.toString());
                }, child: const SizedBox(
                width: double.infinity,
                height: 56,
                child: Center(child:  Text("Add Song to the Playlist"))))],
      ),
    );
  }
}