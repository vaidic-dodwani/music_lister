import 'package:flutter/material.dart';
import 'package:music_lister/utils/widgets/customtextfield.dart';

class AddNewSong extends StatefulWidget {
  const AddNewSong({super.key});

  @override
  State<AddNewSong> createState() => _AddNewSongState();
}

class _AddNewSongState extends State<AddNewSong> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [const CustomTextField(label: "Song Name",),
              const SizedBox(height: 16,),
              const CustomTextField(label: "Artist Name",),
              const SizedBox(height: 16,),
              const CustomTextField(label: "Song Link",),
              const SizedBox(height: 16,),
              ElevatedButton(
                // TODO:Add Primary Button Style here
                onPressed: (){}, child: const SizedBox(
                width: double.infinity,
                height: 56,
    
                child: Center(child:  Text("Add Song to the Playlist"))))],
      ),
    );
  }
}